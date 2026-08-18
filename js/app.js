/* =========================================================
   ROLETA DOS OSCARS
   Front-end + Supabase
========================================================= */

/* =========================================================
   1. CONFIGURAÇÃO
========================================================= */

const MIN_YEAR = 1980;
const MAX_YEAR = 2026;

const allYears = Array.from(
  { length: MAX_YEAR - MIN_YEAR + 1 },
  (_, index) => MIN_YEAR + index,
);

/* =========================================================
   2. ESTADO DA APLICAÇÃO
========================================================= */

let availableYears = [...allYears];

let rotation = 0;
let spinning = false;
let spinCount = 0;

/* =========================================================
   3. ELEMENTOS DO DOM
========================================================= */

const canvas = document.getElementById("wheel");
const ctx = canvas.getContext("2d");

const spinButton = document.getElementById("spinButton");

const resetButton = document.getElementById("resetButton");

const resultElement = document.getElementById("result");

const remainingElement = document.getElementById("remaining");

const spinsElement = document.getElementById("spins");

const historyList = document.getElementById("historyList");

/* =========================================================
   4. ELEMENTOS DE AUTENTICAÇÃO
========================================================= */

const authScreen = document.getElementById("authScreen");

const app = document.getElementById("app");

const authForm = document.getElementById("authForm");

const registerButton = document.getElementById("registerButton");

const logoutButton = document.getElementById("logoutButton");

const authMessage = document.getElementById("authMessage");

const loginButton = document.getElementById("loginButton");

/* =========================================================
   5. CORES DA ROLETA
========================================================= */

const colors = [
  "#7b1113",
  "#9b1c1f",
  "#b8860b",
  "#5e0f11",
  "#c49b2e",
  "#721417",
  "#8e6918",
  "#a82427",
];

/* =========================================================
   6. CANVAS
========================================================= */

function resizeCanvas() {
  const rect = canvas.getBoundingClientRect();

  const dpr = window.devicePixelRatio || 1;

  canvas.width = rect.width * dpr;

  canvas.height = rect.height * dpr;

  ctx.setTransform(dpr, 0, 0, dpr, 0, 0);

  drawWheel();
}

/* =========================================================
   7. DESENHAR ROLETA
========================================================= */

function drawWheel() {
  const width = canvas.clientWidth;

  const height = canvas.clientHeight;

  const centerX = width / 2;

  const centerY = height / 2;

  const radius = Math.min(width, height) / 2 - 12;

  ctx.clearRect(0, 0, width, height);

  /* -----------------------------------------
     BORDA EXTERNA
  ----------------------------------------- */

  ctx.beginPath();

  ctx.arc(centerX, centerY, radius + 5, 0, Math.PI * 2);

  ctx.fillStyle = "#0c0c0c";

  ctx.fill();

  ctx.lineWidth = 8;

  ctx.strokeStyle = "#d4af37";

  ctx.stroke();

  /* -----------------------------------------
     TODOS OS ANOS FORAM SORTEADOS
  ----------------------------------------- */

  if (availableYears.length === 0) {
    ctx.beginPath();

    ctx.arc(centerX, centerY, radius, 0, Math.PI * 2);

    ctx.fillStyle = "#333";

    ctx.fill();

    ctx.fillStyle = "#ffffff";

    ctx.font = "bold 24px Arial";

    ctx.textAlign = "center";

    ctx.textBaseline = "middle";

    ctx.fillText("FIM", centerX, centerY);

    return;
  }

  /* -----------------------------------------
     CONFIGURAÇÃO DAS FATIAS
  ----------------------------------------- */

  const years = displayYears.length;
  const slice = (Math.PI * 2) / years;

  /* -----------------------------------------
     DESENHAR FATIAS
  ----------------------------------------- */

  for (let i = 0; i < years; i++) {
    const startAngle = -Math.PI / 2 + i * slice + rotation;

    const endAngle = startAngle + slice;

    ctx.beginPath();

    ctx.moveTo(centerX, centerY);

    ctx.arc(centerX, centerY, radius, startAngle, endAngle);

    ctx.closePath();

    /* Cor */

    ctx.fillStyle = colors[i % colors.length];

    ctx.fill();

    /* Divisória */

    ctx.lineWidth = 1.5;

    ctx.strokeStyle = "#e3bd50";

    ctx.stroke();

    /* -----------------------------------------
       TEXTO
    ----------------------------------------- */

    const textAngle = startAngle + slice / 2;

    const textRadius = radius * 0.78;

    const textX = centerX + Math.cos(textAngle) * textRadius;

    const textY = centerY + Math.sin(textAngle) * textRadius;

    ctx.save();

    ctx.translate(textX, textY);

    ctx.rotate(textAngle + Math.PI / 2);

    let fontSize = 15;

    if (years > 40) {
      fontSize = 11;
    }

    if (years > 44) {
      fontSize = 10;
    }

    ctx.font = `bold ${fontSize}px Arial`;

    ctx.fillStyle = "#ffffff";

    ctx.textAlign = "center";

    ctx.textBaseline = "middle";

    ctx.shadowColor = "rgba(0, 0, 0, .8)";

    ctx.shadowBlur = 3;

    ctx.fillText(displayYears[i], 0, 0);
    ctx.restore();
  }

  /* -----------------------------------------
     CÍRCULO CENTRAL
  ----------------------------------------- */

  ctx.beginPath();

  ctx.arc(centerX, centerY, radius * 0.14, 0, Math.PI * 2);

  ctx.fillStyle = "#121212";

  ctx.fill();

  ctx.lineWidth = 3;

  ctx.strokeStyle = "#d4af37";

  ctx.stroke();
}
/* =========================================================
   8. ANIMAÇÃO
========================================================= */

function easeOutCubic(t) {
  return 1 - Math.pow(1 - t, 3);
}

/* =========================================================
   9. GIRAR ROLETA
========================================================= */

/* =========================================================
   GIRAR ROLETA
========================================================= */

function spin() {
  if (spinning || availableYears.length === 0) {
    return;
  }

  spinning = true;

  spinButton.disabled = true;
  resetButton.disabled = true;

  // A roleta deve usar exatamente os mesmos anos
  // usados no sorteio.
  displayYears = [...availableYears];

  drawWheel();

  // Sorteia o índice e o ano
  const winnerIndex = Math.floor(Math.random() * displayYears.length);

  const winner = displayYears[winnerIndex];

  // Quantidade de graus/radianos de cada fatia
  const slice = (Math.PI * 2) / displayYears.length;

  // O ponteiro está no topo
  const pointerAngle = -Math.PI / 2;

  /*
   * Centro da fatia vencedora SEM considerar a rotação.
   *
   * A roleta começa no topo (-PI/2).
   */
  const winnerCenterAngle = pointerAngle + winnerIndex * slice + slice / 2;

  /*
   * Queremos que o centro da fatia vencedora
   * fique exatamente no ponteiro.
   */
  const targetRotation = pointerAngle - winnerCenterAngle;

  /*
   * Normaliza a rotação atual para 0..2PI.
   */
  const currentRotation =
    ((rotation % (Math.PI * 2)) + Math.PI * 2) % (Math.PI * 2);

  /*
   * Calcula quanto precisamos girar para chegar
   * exatamente à posição vencedora.
   */
  let rotationDifference = targetRotation - currentRotation;

  rotationDifference =
    ((rotationDifference % (Math.PI * 2)) + Math.PI * 2) % (Math.PI * 2);

  /*
   * Faz várias voltas antes de parar.
   */
  const extraTurns = 7 + Math.floor(Math.random() * 4);

  const finalRotation =
    rotation + rotationDifference + extraTurns * Math.PI * 2;

  const duration = 5500 + Math.random() * 1800;

  const startRotation = rotation;
  const startTime = performance.now();

  function animate(currentTime) {
    const elapsed = currentTime - startTime;

    const progress = Math.min(elapsed / duration, 1);

    const eased = easeOutCubic(progress);

    rotation = startRotation + (finalRotation - startRotation) * eased;

    drawWheel();

    if (progress < 1) {
      requestAnimationFrame(animate);
      return;
    }

    // Garante a posição final exata
    rotation = finalRotation;

    drawWheel();

    finishSpin(winnerIndex);
  }

  requestAnimationFrame(animate);
}

/* =========================================================
   10. FINALIZAR GIRO
========================================================= */

async function finishSpin(winnerIndex) {
  const winner = availableYears[winnerIndex];

  try {
    await saveSpin(winner);
  } catch (error) {
    console.error("Erro ao salvar sorteio:", error);

    alert("Não foi possível salvar o sorteio. Tente novamente.");

    spinning = false;

    spinButton.disabled = false;

    resetButton.disabled = false;

    return;
  }

  /* Remove o ano */

  availableYears.splice(winnerIndex, 1);
  displayYears = [...availableYears];
  spinCount++;

  /* Resultado */

  resultElement.textContent = winner;

  resultElement.classList.remove("animate");

  void resultElement.offsetWidth;

  resultElement.classList.add("animate");

  /* Estatísticas */

  updateStats();

  /* Histórico */

  addHistory(winner);

  /* Confetes */

  createConfetti();

  /* Libera controles */

  spinning = false;

  spinButton.disabled = false;

  resetButton.disabled = false;

  /* Redesenha */

  drawWheel();
}
/* =========================================================
   11. ESTATÍSTICAS
========================================================= */

function updateStats() {
  remainingElement.textContent = availableYears.length;

  spinsElement.textContent = spinCount;
}

/* =========================================================
   12. HISTÓRICO
========================================================= */

function addHistory(year) {
  const item = document.createElement("div");

  item.className = "history__item";

  item.textContent = year;

  historyList.prepend(item);
}

/* =========================================================
   13. CONFETES
========================================================= */

function createConfetti() {
  const amount = 100;

  for (let i = 0; i < amount; i++) {
    const confetti = document.createElement("div");

    confetti.className = "confetti";

    confetti.style.left = Math.random() * 100 + "vw";

    confetti.style.animationDuration = 2 + Math.random() * 3 + "s";

    confetti.style.animationDelay = Math.random() * 0.5 + "s";

    confetti.style.background =
      colors[Math.floor(Math.random() * colors.length)];

    document.body.appendChild(confetti);

    setTimeout(() => {
      confetti.remove();
    }, 6000);
  }
}

/* =========================================================
   14. RESETAR ROLETA
========================================================= */

async function reset() {
  if (spinning) {
    return;
  }

  const {
    data: { user },
  } = await supabaseClient.auth.getUser();

  if (!user) {
    return;
  }

  resetButton.disabled = true;

  spinButton.disabled = true;

  try {
    const { error } = await supabaseClient
      .from("user_spins")
      .delete()
      .eq("user_id", user.id);

    if (error) {
      throw error;
    }

    /* Restaura anos */

    availableYears = [...allYears];

    /* Reseta rotação */

    rotation = 0;

    /* Reseta contador */

    spinCount = 0;

    /* Limpa resultado */

    resultElement.textContent = "—";

    /* Limpa histórico */

    historyList.innerHTML = "";

    /* Atualiza interface */

    updateStats();

    drawWheel();
  } catch (error) {
    console.error("Erro ao restaurar roleta:", error);

    alert("Não foi possível restaurar a roleta.");
  } finally {
    resetButton.disabled = false;

    spinButton.disabled = false;
  }
}
/* =========================================================
   15. SUPABASE
   CARREGAR DADOS DO USUÁRIO
========================================================= */

async function loadUserData() {
  const {
    data: { user },
  } = await supabaseClient.auth.getUser();

  if (!user) {
    console.error("Usuário não autenticado.");

    return;
  }

  /* -----------------------------------------
     BUSCAR SORTEIOS
  ----------------------------------------- */

  const { data: spins, error } = await supabaseClient
    .from("user_spins")
    .select(
      `
          id,
          created_at,
          year_id,
          oscars_years (
            year
          )
        `,
    )
    .eq("user_id", user.id)
    .order("created_at", {
      ascending: false,
    });

  if (error) {
    console.error("Erro ao carregar sorteios:", error);

    return;
  }

  const userSpins = spins ?? [];

  /* -----------------------------------------
     ANOS JÁ SORTEADOS
  ----------------------------------------- */

  const drawnYears = userSpins
    .map((spin) => spin.oscars_years?.year)
    .filter((year) => typeof year === "number");

  /* -----------------------------------------
     REMOVER ANOS DA ROLETA
  ----------------------------------------- */

  availableYears = allYears.filter((year) => !drawnYears.includes(year));

  displayYears = [...availableYears];
  /* -----------------------------------------
     CONTADOR
  ----------------------------------------- */

  spinCount = userSpins.length;

  /* -----------------------------------------
     HISTÓRICO
  ----------------------------------------- */

  historyList.innerHTML = "";

  userSpins.forEach((spin) => {
    const year = spin.oscars_years?.year;

    if (typeof year === "number") {
      addHistory(year);
    }
  });

  /* -----------------------------------------
     ATUALIZAR INTERFACE
  ----------------------------------------- */

  updateStats();

  drawWheel();

  console.log("Dados do usuário carregados:", {
    userId: user.id,
    spins: userSpins,
    availableYears,
  });
}

/* =========================================================
   16. SUPABASE
   SALVAR SORTEIO
========================================================= */

async function saveSpin(year) {
  const {
    data: { user },
  } = await supabaseClient.auth.getUser();

  if (!user) {
    throw new Error("Usuário não autenticado.");
  }

  /* -----------------------------------------
     BUSCAR ID DO ANO
  ----------------------------------------- */

  const { data: yearData, error: yearError } = await supabaseClient
    .from("oscars_years")
    .select("id, year")
    .eq("year", year)
    .single();

  if (yearError) {
    throw yearError;
  }

  /* -----------------------------------------
     SALVAR SORTEIO
  ----------------------------------------- */

  const { error: spinError } = await supabaseClient.from("user_spins").insert({
    user_id: user.id,

    year_id: yearData.id,
  });

  if (spinError) {
    throw spinError;
  }

  console.log("Sorteio salvo:", year);
}
/* =========================================================
   17. AUTENTICAÇÃO
   CONTROLE DAS TELAS
========================================================= */

function showAuthScreen() {
  authScreen.style.display = "flex";

  app.style.display = "none";
}

function showApp() {
  authScreen.style.display = "none";

  app.style.display = "flex";

  /*
   * Agora que a roleta está visível,
   * calculamos o tamanho correto do canvas.
   */

  requestAnimationFrame(() => {
    resizeCanvas();
  });
}

function showAuthMessage(message) {
  authMessage.textContent = message;
}

/* =========================================================
   18. AUTENTICAÇÃO
   VERIFICAR SESSÃO
========================================================= */

async function checkAuth() {
  const {
    data: { session },
  } = await supabaseClient.auth.getSession();

  if (session) {
    showApp();

    await loadUserData();

    return;
  }

  showAuthScreen();
}

/* =========================================================
   19. AUTENTICAÇÃO
   LOGIN
========================================================= */

authForm.addEventListener("submit", async (event) => {
  event.preventDefault();

  const email = document.getElementById("email").value.trim();

  const password = document.getElementById("password").value;

  loginButton.disabled = true;

  showAuthMessage("Entrando...");

  const { error } = await supabaseClient.auth.signInWithPassword({
    email,
    password,
  });

  if (error) {
    showAuthMessage(error.message);

    loginButton.disabled = false;

    return;
  }

  showAuthMessage("");

  loginButton.disabled = false;

  showApp();

  await loadUserData();
});

/* =========================================================
   20. AUTENTICAÇÃO
   CADASTRO
========================================================= */

registerButton.addEventListener("click", async () => {
  const email = document.getElementById("email").value.trim();

  const password = document.getElementById("password").value;

  /* Validação */

  if (!email || !password) {
    showAuthMessage("Informe e-mail e senha.");

    return;
  }

  if (password.length < 6) {
    showAuthMessage("A senha deve ter pelo menos 6 caracteres.");

    return;
  }

  registerButton.disabled = true;

  showAuthMessage("Criando conta...");

  /* Cadastro */

  const { data, error } = await supabaseClient.auth.signUp({
    email,
    password,
  });

  /* Erro */

  if (error) {
    showAuthMessage(error.message);

    registerButton.disabled = false;

    return;
  }

  /* Cadastro com sessão */

  if (data.session) {
    showAuthMessage("");

    showApp();

    await loadUserData();
  } else {
    showAuthMessage("Conta criada. Faça login para continuar.");
  }

  registerButton.disabled = false;
});
/* =========================================================
   21. AUTENTICAÇÃO
   LOGOUT
========================================================= */

logoutButton.addEventListener("click", async () => {
  await supabaseClient.auth.signOut();

  showAuthScreen();
});

/* =========================================================
   22. AUTENTICAÇÃO
   OBSERVAR SESSÃO
========================================================= */

supabaseClient.auth.onAuthStateChange((event, session) => {
  /*
   * O carregamento dos dados acontece
   * no login e no checkAuth().
   *
   * Aqui apenas alternamos as telas.
   */

  if (session) {
    showApp();
  } else {
    showAuthScreen();
  }
});

/* =========================================================
   23. EVENTOS DA ROLETA
========================================================= */

spinButton.addEventListener("click", spin);

resetButton.addEventListener("click", reset);

window.addEventListener("resize", resizeCanvas);

/* =========================================================
   24. TECLADO
========================================================= */

document.addEventListener("keydown", (event) => {
  if (event.code === "Space" && !event.repeat) {
    event.preventDefault();

    spin();
  }
});

/* =========================================================
   25. INICIALIZAÇÃO
========================================================= */

updateStats();

checkAuth();
