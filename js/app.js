/* =========================================================
   ROLETA DOS OSCARS
========================================================= */

/* =========================================================
   1. CONFIGURAÇÃO
========================================================= */

const MIN_YEAR = 1980;

const MAX_YEAR = 2026;

const allYears = Array.from(
  {
    length: MAX_YEAR - MIN_YEAR + 1,
  },
  (_, index) => MIN_YEAR + index,
);

/* =========================================================
   2. ESTADO
========================================================= */

let availableYears = [...allYears];

let displayYears = [...availableYears];

let watchedYears = new Set();

let drawnYears = new Set();

let rotation = 0;

let spinning = false;

let spinCount = 0;

/* =========================================================
   3. ELEMENTOS DA ROLETA
========================================================= */

const canvas = document.getElementById("wheel");

const ctx = canvas.getContext("2d");

const spinButton = document.getElementById("spinButton");

const resetButton = document.getElementById("resetButton");

const resultElement = document.getElementById("result");

const remainingElement = document.getElementById("remaining");

const spinsElement = document.getElementById("spins");

const watchedElement = document.getElementById("watched");

const historyList = document.getElementById("historyList");

/* =========================================================
   4. ELEMENTOS DO FILME
========================================================= */

const movieInfo = document.getElementById("movieInfo");

const moviePoster = document.getElementById("moviePoster");

const movieMetacritic = document.getElementById("movieMetacritic");

const movieRottenTomatoes = document.getElementById("movieRottenTomatoes");

const movieTitle = document.getElementById("movieTitle");

const movieOriginalTitle = document.getElementById("movieOriginalTitle");

const movieReleaseYear = document.getElementById("movieReleaseYear");

const movieRuntime = document.getElementById("movieRuntime");

const movieGenres = document.getElementById("movieGenres");

const movieRating = document.getElementById("movieRating");

const movieVotes = document.getElementById("movieVotes");

const movieDirector = document.getElementById("movieDirector");

const movieOverview = document.getElementById("movieOverview");

const movieStars = document.getElementById("movieStars");

const movieUserRatingValue = document.getElementById("movieUserRatingValue");

const saveRatingButton = document.getElementById("saveRatingButton");

const deleteRatingButton = document.getElementById("deleteRatingButton");

const movieRatingBadge =
  document.getElementById("movieRatingBadge");

const movieRatingBadgeText =
  document.getElementById("movieRatingBadgeText");

const movieRatingBadgeValue =
  document.getElementById("movieRatingBadgeValue");


let selectedUserRating = null;

let currentMovieYear = null;

/* =========================================================
   5. AUTENTICAÇÃO
========================================================= */

const authScreen = document.getElementById("authScreen");

const app = document.getElementById("app");

const authForm = document.getElementById("authForm");

const registerButton = document.getElementById("registerButton");

const logoutButton = document.getElementById("logoutButton");

const authMessage = document.getElementById("authMessage");

const loginButton = document.getElementById("loginButton");

/* =========================================================
   6. CORES DA ROLETA
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
   7. REDIMENSIONAR CANVAS
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
   8. DESENHAR ROLETA
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
       SEM ANOS
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
       CONFIGURAÇÃO
  ----------------------------------------- */

  const years = displayYears.length;

  const slice = (Math.PI * 2) / years;

  const isMobile = window.innerWidth <= 600;

  /* -----------------------------------------
       FATIAS
  ----------------------------------------- */

  for (let i = 0; i < years; i++) {
    const startAngle = -Math.PI / 2 + i * slice + rotation;

    const endAngle = startAngle + slice;

    /* -------------------------------------
         FATIA
    ------------------------------------- */

    ctx.beginPath();

    ctx.moveTo(centerX, centerY);

    ctx.arc(centerX, centerY, radius, startAngle, endAngle);

    ctx.closePath();

    ctx.fillStyle = colors[i % colors.length];

    ctx.fill();

    /* -------------------------------------
         DIVISÓRIA
    ------------------------------------- */

    ctx.lineWidth = 1.5;

    ctx.strokeStyle = "#e3bd50";

    ctx.stroke();

    /* -------------------------------------
         TEXTO
    ------------------------------------- */

    let showYear = true;

    if (isMobile) {
      /*
       * 47 anos são muitas informações
       * para uma roleta pequena.
       *
       * Mostramos 1 a cada 3.
       */

      showYear = i % 3 === 0;
    }

    if (!showYear) {
      continue;
    }

    const textAngle = startAngle + slice / 2;

    const textRadius = radius * 0.78;

    const textX = centerX + Math.cos(textAngle) * textRadius;

    const textY = centerY + Math.sin(textAngle) * textRadius;

    ctx.save();

    ctx.translate(textX, textY);

    ctx.rotate(textAngle + Math.PI / 2);

    /* -------------------------------------
         TAMANHO DA FONTE
    ------------------------------------- */

    let fontSize = 15;

    if (years > 40) {
      fontSize = 11;
    }

    if (isMobile) {
      fontSize = 9;
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
   9. EASING
========================================================= */

function easeOutCubic(t) {
  return 1 - Math.pow(1 - t, 3);
}

/* =========================================================
   10. BUSCAR FILME NO SUPABASE
========================================================= */

async function getOscarMovie(year) {
  const { data, error } = await supabaseClient
    .from("oscars_years")
    .select(
      `
        year,
        winner_title,
        imdb_id,
        original_title,
        release_year,
        runtime_minutes,
        genres,
        director,
        imdb_rating,
        imdb_votes,
        overview,
        poster_url,
        metacritic_score,
        rotten_tomatoes_score,
        critic_summary
      `,
    )
    .eq("year", year)
    .single();

  if (error) {
    throw error;
  }

  if (!data) {
    throw new Error(`Nenhum filme encontrado para o ano ${year}.`);
  }

  return data;
}

/* =========================================================
   11. MOSTRAR FILME
========================================================= */

async function displayOscarMovie(movie) {

  if (!movieInfo) {
    return;
  }

  currentMovieYear = movie.year;

  renderUserRating(null);

  movieInfo.style.display = "grid";


  /* =================================================
     POSTER
  ================================================= */

  if (moviePoster) {

    if (movie.poster_url) {

      moviePoster.src = movie.poster_url;

      moviePoster.alt =
        movie.winner_title || "Poster do filme";

      moviePoster.style.display = "block";

    } else {

      moviePoster.removeAttribute("src");

      moviePoster.alt = "";

      moviePoster.style.display = "none";
    }
  }


  /* =================================================
     TÍTULO
  ================================================= */

  if (movieTitle) {

    movieTitle.textContent =
      movie.winner_title || "Título não informado";
  }


  /* =================================================
     TÍTULO ORIGINAL
  ================================================= */

  if (movieOriginalTitle) {

    if (
      movie.original_title &&
      movie.original_title !== movie.winner_title
    ) {

      movieOriginalTitle.textContent =
        movie.original_title;

    } else {

      movieOriginalTitle.textContent = "";
    }
  }


  /* =================================================
     ANO
  ================================================= */

  if (movieReleaseYear) {

    movieReleaseYear.textContent =
      movie.release_year || "Ano desconhecido";
  }


  /* =================================================
     DURAÇÃO
  ================================================= */

  if (movieRuntime) {

    movieRuntime.textContent =
      movie.runtime_minutes
        ? `${movie.runtime_minutes} min`
        : "Duração não informada";
  }


  /* =================================================
     GÊNEROS
  ================================================= */

  if (movieGenres) {

    movieGenres.innerHTML = "";

    const genres = movie.genres
      ? movie.genres
        .split(",")
        .map((genre) => genre.trim())
        .filter(Boolean)
      : [];

    genres.forEach((genre) => {

      const element =
        document.createElement("span");

      element.className =
        "movie-info__genre";

      element.textContent = genre;

      movieGenres.appendChild(element);
    });
  }


  /* =================================================
     IMDb
  ================================================= */

  if (movieRating) {

    movieRating.textContent =
      movie.imdb_rating !== null &&
        movie.imdb_rating !== undefined
        ? `${Number(movie.imdb_rating).toFixed(1)}/10`
        : "—";
  }


  /* =================================================
     VOTOS IMDb
  ================================================= */

  if (movieVotes) {

    movieVotes.textContent =
      movie.imdb_votes !== null &&
        movie.imdb_votes !== undefined
        ? Number(movie.imdb_votes)
          .toLocaleString("pt-BR")
        : "—";
  }


  /* =================================================
     METACRITIC
  ================================================= */

  if (movieMetacritic) {

    movieMetacritic.textContent =
      movie.metacritic_score !== null &&
        movie.metacritic_score !== undefined
        ? `${movie.metacritic_score}/100`
        : "—";
  }


  /* =================================================
     ROTTEN TOMATOES
  ================================================= */

  if (movieRottenTomatoes) {

    movieRottenTomatoes.textContent =
      movie.rotten_tomatoes_score !== null &&
        movie.rotten_tomatoes_score !== undefined
        ? `${movie.rotten_tomatoes_score}%`
        : "—";
  }


  /* =================================================
     DIRETOR
  ================================================= */

  if (movieDirector) {

    movieDirector.textContent =
      movie.director || "Não informado";
  }


  /* =================================================
     SINOPSE
  ================================================= */

  if (movieOverview) {

    movieOverview.textContent =
      movie.overview ||
      "Sinopse não disponível.";
  }


  /* =================================================
     AVALIAÇÃO PESSOAL
  ================================================= */

  try {

    await loadUserRating(movie.year);

  } catch (error) {

    console.error(
      "Erro ao carregar avaliação pessoal:",
      error
    );

    renderUserRating(null);
  }
}

/* =========================================================
   12. AVALIAÇÃO PESSOAL
========================================================= */

async function getOscarYearId(year) {
  const { data, error } = await supabaseClient
    .from("oscars_years")
    .select("id")
    .eq("year", year)
    .single();

  if (error) {
    throw error;
  }

  return data.id;
}

function updateMovieRatingBadge(rating) {

  if (
    !movieRatingBadge ||
    !movieRatingBadgeText ||
    !movieRatingBadgeValue
  ) {
    return;
  }

  if (rating === null || rating === undefined) {

    movieRatingBadgeText.textContent = "—";
    movieRatingBadgeValue.textContent = "Sem nota";

    movieRatingBadge.className =
      "movie-rating-badge";

    return;
  }

  const value = Number(rating);

  movieRatingBadgeValue.textContent =
    value.toFixed(1);


  if (value <= 4) {

    movieRatingBadgeText.textContent =
      "Veio podi";

    movieRatingBadge.className =
      "movie-rating-badge movie-rating-badge--ruim";


  } else if (value <= 7) {

    movieRatingBadgeText.textContent =
      "Mééééééé";

    movieRatingBadge.className =
      "movie-rating-badge movie-rating-badge--medio";


  } else if (value <= 9) {

    movieRatingBadgeText.textContent =
      "Ó pega";

    movieRatingBadge.className =
      "movie-rating-badge movie-rating-badge--bom";


  } else {

    movieRatingBadgeText.textContent =
      "Slc entra dois de uma vez!!!";

    movieRatingBadge.className =
      "movie-rating-badge movie-rating-badge--muito-bom";
  }
}

function renderUserRating(
  rating
) {

  selectedUserRating =
    rating;

  // Atualiza o ícone da nota
  updateMovieRatingBadge(rating);


  // Atualiza o valor da nota
  if (movieUserRatingValue) {

    movieUserRatingValue.textContent =
      rating !== null &&
        rating !== undefined
        ? `${Number(rating).toFixed(1)}/10`
        : "—";

  }


  if (movieStars) {

    movieStars
      .querySelectorAll(
        ".movie-star"
      )
      .forEach((star) => {

        const starRating =
          Number(
            star.dataset.rating
          );


        star.classList.remove(
          "is-full",
          "is-half"
        );


        if (
          rating >=
          starRating
        ) {

          star.classList.add(
            "is-full"
          );

        } else if (
          rating ===
          starRating - 0.5
        ) {

          star.classList.add(
            "is-half"
          );

        }

      });

  }


  if (deleteRatingButton) {

    deleteRatingButton.style.display =
      rating !== null &&
        rating !== undefined
        ? "block"
        : "none";

  }

}


async function loadUserRating(year) {

  const {
    data: { user },
  } = await supabaseClient.auth.getUser();


  if (!user) {

    renderUserRating(null);

    return;

  }


  const yearId = await getOscarYearId(year);


  const { data, error } = await supabaseClient
    .from("user_movie_ratings")
    .select("rating")
    .eq("user_id", user.id)
    .eq("year_id", yearId)
    .maybeSingle();


  if (error) {

    throw error;

  }


  renderUserRating(data?.rating ?? null);

}


async function saveUserRating() {

  if (!currentMovieYear) {

    return;

  }


  if (
    selectedUserRating === null ||
    selectedUserRating === undefined
  ) {

    alert("Selecione uma nota antes de salvar.");

    return;

  }


  const {
    data: { user },
  } = await supabaseClient.auth.getUser();


  if (!user) {

    alert("Usuário não autenticado.");

    return;

  }


  saveRatingButton.disabled = true;


  try {

    const yearId = await getOscarYearId(currentMovieYear);


    const { error } = await supabaseClient
      .from("user_movie_ratings")
      .upsert(
        {
          user_id: user.id,

          year_id: yearId,

          rating: Number(selectedUserRating),

          updated_at: new Date().toISOString(),
        },
        {
          onConflict: "user_id,year_id",
        }
      );


    if (error) {

      throw error;

    }


    renderUserRating(
      Number(selectedUserRating)
    );


  } catch (error) {

    console.error(
      "Erro ao salvar avaliação:",
      error
    );

    alert(
      "Não foi possível salvar sua avaliação."
    );


  } finally {

    saveRatingButton.disabled = false;

  }

}


async function deleteUserRating() {

  if (!currentMovieYear) {

    return;

  }


  const {
    data: { user },
  } = await supabaseClient.auth.getUser();


  if (!user) {

    alert("Usuário não autenticado.");

    return;

  }


  deleteRatingButton.disabled = true;


  try {

    const yearId = await getOscarYearId(
      currentMovieYear
    );


    const { error } = await supabaseClient
      .from("user_movie_ratings")
      .delete()
      .eq("user_id", user.id)
      .eq("year_id", yearId);


    if (error) {

      throw error;

    }


    renderUserRating(null);


  } catch (error) {

    console.error(
      "Erro ao remover avaliação:",
      error
    );

    alert(
      "Não foi possível remover sua avaliação."
    );


  } finally {

    deleteRatingButton.disabled = false;

  }

}


function setupRatingStars() {

  if (!movieStars) {
    return;
  }


  const stars =
    movieStars.querySelectorAll(
      ".movie-star"
    );


  stars.forEach((star) => {

    star.addEventListener(
      "click",
      (event) => {

        const rect =
          star.getBoundingClientRect();


        const clickX =
          event.clientX -
          rect.left;


        const isLeftHalf =
          clickX <
          rect.width / 2;


        const baseRating =
          Number(
            star.dataset.rating
          );


        let rating;


        if (isLeftHalf) {

          rating =
            baseRating - 0.5;

        } else {

          rating =
            baseRating;
        }


        renderUserRating(
          rating
        );

      }
    );

  });

}


/* =========================================================
   13. ESCONDER FILME
========================================================= */

function hideOscarMovie() {

  if (movieInfo) {

    movieInfo.style.display = "none";

  }

}

/* =========================================================
   13. BUSCAR ANOS ASSISTIDOS
========================================================= */

async function loadWatchedYears() {
  const {
    data: { user },
  } = await supabaseClient.auth.getUser();

  if (!user) {
    return [];
  }

  const { data, error } = await supabaseClient
    .from("user_watched_years")
    .select(
      `
          year_id,
          oscars_years (
            year
          )
        `,
    )
    .eq("user_id", user.id);

  if (error) {
    console.error("Erro ao carregar anos assistidos:", error);

    return [];
  }

  return (data ?? [])
    .map((item) => item.oscars_years?.year)
    .filter((year) => typeof year === "number");
}

/* =========================================================
   14. MARCAR COMO ASSISTIDO
========================================================= */

async function markYearAsWatched(year) {
  const {
    data: { user },
  } = await supabaseClient.auth.getUser();

  if (!user) {
    throw new Error("Usuário não autenticado.");
  }

  const { data: yearData, error: yearError } = await supabaseClient
    .from("oscars_years")
    .select("id")
    .eq("year", year)
    .single();

  if (yearError) {
    throw yearError;
  }

  const { error } = await supabaseClient.from("user_watched_years").insert({
    user_id: user.id,

    year_id: yearData.id,
  });

  if (error) {
    throw error;
  }
}

/* =========================================================
   15. DESMARCAR COMO ASSISTIDO
========================================================= */

async function unmarkYearAsWatched(year) {
  const {
    data: { user },
  } = await supabaseClient.auth.getUser();

  if (!user) {
    throw new Error("Usuário não autenticado.");
  }

  const { data: yearData, error: yearError } = await supabaseClient
    .from("oscars_years")
    .select("id")
    .eq("year", year)
    .single();

  if (yearError) {
    throw yearError;
  }

  const { error } = await supabaseClient
    .from("user_watched_years")
    .delete()
    .eq("user_id", user.id)
    .eq("year_id", yearData.id);

  if (error) {
    throw error;
  }
}

/* =========================================================
   16. ATUALIZAR ANOS DISPONÍVEIS
========================================================= */

function updateAvailableYears() {
  availableYears = allYears.filter(
    (year) => !drawnYears.has(year) && !watchedYears.has(year),
  );

  displayYears = [...availableYears];
}

/* =========================================================
   17. GIRAR ROLETA
========================================================= */

function spin() {
  if (spinning || availableYears.length === 0) {
    return;
  }

  spinning = true;

  spinButton.disabled = true;

  resetButton.disabled = true;

  displayYears = [...availableYears];

  drawWheel();

  /* -----------------------------------------
       ESCOLHER VENCEDOR
  ----------------------------------------- */

  const winnerIndex = Math.floor(Math.random() * displayYears.length);

  const slice = (Math.PI * 2) / displayYears.length;

  const pointerAngle = -Math.PI / 2;

  const winnerCenterAngle = pointerAngle + winnerIndex * slice + slice / 2;

  const targetRotation = pointerAngle - winnerCenterAngle;

  const currentRotation =
    ((rotation % (Math.PI * 2)) + Math.PI * 2) % (Math.PI * 2);

  let rotationDifference = targetRotation - currentRotation;

  rotationDifference =
    ((rotationDifference % (Math.PI * 2)) + Math.PI * 2) % (Math.PI * 2);

  const extraTurns = 7 + Math.floor(Math.random() * 4);

  const finalRotation =
    rotation + rotationDifference + extraTurns * Math.PI * 2;

  const duration = 5500 + Math.random() * 1800;

  const startRotation = rotation;

  const startTime = performance.now();

  /* -----------------------------------------
       ANIMAÇÃO
  ----------------------------------------- */

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

    rotation = finalRotation;

    drawWheel();

    finishSpin(winnerIndex);
  }

  requestAnimationFrame(animate);
}

/* =========================================================
   18. FINALIZAR GIRO
========================================================= */

async function finishSpin(winnerIndex) {
  const winner = availableYears[winnerIndex];

  try {
    /* -------------------------------------
         SALVAR SORTEIO
    ------------------------------------- */

    await saveSpin(winner);

    /* -------------------------------------
         BUSCAR FILME
    ------------------------------------- */

    const movie = await getOscarMovie(winner);

    /* -------------------------------------
         MOSTRAR FILME
    ------------------------------------- */

    await displayOscarMovie(movie);
  } catch (error) {
    console.error("Erro ao carregar o filme:", error);

    hideOscarMovie();
  }

  /* -----------------------------------------
       REGISTRAR ANO SORTEADO
  ----------------------------------------- */

  drawnYears.add(winner);

  /* -----------------------------------------
       REMOVER ANO
  ----------------------------------------- */

  availableYears = availableYears.filter((year) => year !== winner);

  displayYears = [...availableYears];

  /* -----------------------------------------
       CONTADOR
  ----------------------------------------- */

  spinCount++;

  /* -----------------------------------------
       RESULTADO
  ----------------------------------------- */

  resultElement.textContent = winner;

  resultElement.classList.remove("animate");

  void resultElement.offsetWidth;

  resultElement.classList.add("animate");

  /* -----------------------------------------
       ESTATÍSTICAS
  ----------------------------------------- */

  updateStats();

  /* -----------------------------------------
       HISTÓRICO
  ----------------------------------------- */

  addHistory(winner);

  /* -----------------------------------------
       CONFETES
  ----------------------------------------- */

  createConfetti();

  /* -----------------------------------------
       LIBERAR CONTROLES
  ----------------------------------------- */

  spinning = false;

  spinButton.disabled = false;

  resetButton.disabled = false;

  /* -----------------------------------------
       REDESENHAR
  ----------------------------------------- */

  drawWheel();
}

/* =========================================================
   19. ESTATÍSTICAS
========================================================= */

function updateStats() {
  remainingElement.textContent = availableYears.length;

  spinsElement.textContent = spinCount;

  if (watchedElement) {
    watchedElement.textContent = watchedYears.size;
  }
}

/* =========================================================
   20. HISTÓRICO
========================================================= */

function addHistory(year) {
  const item = document.createElement("div");

  item.className = "history__item";

  /* -----------------------------------------
       CHECKBOX
  ----------------------------------------- */

  const checkbox = document.createElement("input");

  checkbox.type = "checkbox";

  checkbox.className = "history__checkbox";

  checkbox.checked = watchedYears.has(year);

  checkbox.title = "Marcar como assistido";

  /* -----------------------------------------
       ANO
  ----------------------------------------- */

  const yearButton = document.createElement("button");

  yearButton.type = "button";

  yearButton.className = "history__year";

  yearButton.textContent = year;

  /* -----------------------------------------
       CLICAR NO ANO
  ----------------------------------------- */

  yearButton.addEventListener("click", async () => {
    try {
      yearButton.disabled = true;

      const movie = await getOscarMovie(year);

      await displayOscarMovie(movie);

      if (movieInfo) {
        movieInfo.scrollIntoView({
          behavior: "smooth",

          block: "start",
        });
      }
    } catch (error) {
      console.error(`Erro ao carregar o filme de ${year}:`, error);

      alert(`Não foi possível carregar as informações do filme de ${year}.`);
    } finally {
      yearButton.disabled = false;
    }
  });

  /* -----------------------------------------
       MARCAR / DESMARCAR
  ----------------------------------------- */

  checkbox.addEventListener("change", async () => {
    checkbox.disabled = true;

    try {
      if (checkbox.checked) {
        await markYearAsWatched(year);

        watchedYears.add(year);
      } else {
        await unmarkYearAsWatched(year);

        watchedYears.delete(year);
      }

      /*
       * Um ano marcado como assistido
       * sai da roleta.
       *
       * Se desmarcado, só volta caso
       * nunca tenha sido sorteado.
       */

      updateAvailableYears();

      updateStats();

      drawWheel();
    } catch (error) {
      console.error("Erro ao atualizar filme assistido:", error);

      /*
       * Reverte visualmente o checkbox
       * caso o Supabase dê erro.
       */

      checkbox.checked = !checkbox.checked;

      alert("Não foi possível atualizar o status do filme.");
    } finally {
      checkbox.disabled = false;
    }
  });

  item.appendChild(checkbox);

  item.appendChild(yearButton);

  historyList.prepend(item);
}

/* =========================================================
   21. CONFETES
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
   22. RESET
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

  const { error: ratingsError } = await supabaseClient
    .from("user_movie_ratings")
    .delete()
    .eq("user_id", user.id);

  if (ratingsError) {
    throw ratingsError;
  }

  resetButton.disabled = true;
  spinButton.disabled = true;

  try {
    /* =================================================
       APAGAR HISTÓRICO DE SORTEIOS
    ================================================= */

    const { error: spinsError } = await supabaseClient
      .from("user_spins")
      .delete()
      .eq("user_id", user.id);

    if (spinsError) {
      throw spinsError;
    }

    /* =================================================
       APAGAR FILMES MARCADOS COMO ASSISTIDOS
    ================================================= */

    const { error: watchedError } = await supabaseClient
      .from("user_watched_years")
      .delete()
      .eq("user_id", user.id);

    if (watchedError) {
      throw watchedError;
    }

    /* =================================================
       LIMPAR ESTADO LOCAL
    ================================================= */

    drawnYears = new Set();

    watchedYears = new Set();

    availableYears = [...allYears];

    displayYears = [...availableYears];

    /* =================================================
       RESETAR ROTAÇÃO
    ================================================= */

    rotation = 0;

    /* =================================================
       RESETAR CONTADOR DE GIROS
    ================================================= */

    spinCount = 0;

    /* =================================================
       RESETAR RESULTADO
    ================================================= */

    resultElement.textContent = "—";

    resultElement.classList.remove("animate");

    /* =================================================
       ESCONDER CARD DO FILME
    ================================================= */

    hideOscarMovie();

    /* =================================================
       LIMPAR HISTÓRICO VISUAL
    ================================================= */

    historyList.innerHTML = "";

    /* =================================================
       ATUALIZAR ESTATÍSTICAS
    ================================================= */

    updateStats();

    /* =================================================
       REDESENHAR ROLETA
    ================================================= */

    drawWheel();

    console.log("Roleta restaurada completamente.");
  } catch (error) {
    console.error("Erro ao restaurar roleta:", error);

    alert("Não foi possível restaurar a roleta.");
  } finally {
    resetButton.disabled = false;

    spinButton.disabled = false;
  }
}

/* =========================================================
   23. CARREGAR DADOS DO USUÁRIO
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
       SORTEIOS
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
       ANOS SORTEADOS
  ----------------------------------------- */

  drawnYears = new Set(
    userSpins
      .map((spin) => spin.oscars_years?.year)
      .filter((year) => typeof year === "number"),
  );

  /* -----------------------------------------
       ANOS ASSISTIDOS
  ----------------------------------------- */

  const loadedWatchedYears = await loadWatchedYears();

  watchedYears = new Set(loadedWatchedYears);

  /* -----------------------------------------
       ANOS DISPONÍVEIS
  ----------------------------------------- */

  updateAvailableYears();

  /* -----------------------------------------
       GIROS
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
       ATUALIZAR
  ----------------------------------------- */

  updateStats();

  drawWheel();

  console.log("Dados do usuário carregados:", {
    userId: user.id,

    spins: userSpins,

    watchedYears: loadedWatchedYears,

    drawnYears: [...drawnYears],

    availableYears,
  });
}

/* =========================================================
   24. SALVAR SORTEIO
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
       SALVAR
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
   25. TELA DE LOGIN
========================================================= */

function showAuthScreen() {
  authScreen.style.display = "flex";

  app.style.display = "none";
}

/* =========================================================
   26. TELA DA APLICAÇÃO
========================================================= */

function showApp() {
  authScreen.style.display = "none";

  app.style.display = "flex";

  requestAnimationFrame(() => {
    resizeCanvas();
  });
}

/* =========================================================
   27. MENSAGEM DE AUTENTICAÇÃO
========================================================= */

function showAuthMessage(message) {
  authMessage.textContent = message;
}

/* =========================================================
   28. VERIFICAR AUTENTICAÇÃO
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
   29. LOGIN
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
   30. CADASTRO
========================================================= */

registerButton.addEventListener("click", async () => {
  const email = document.getElementById("email").value.trim();

  const password = document.getElementById("password").value;

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

  const { data, error } = await supabaseClient.auth.signUp({
    email,
    password,
  });

  if (error) {
    showAuthMessage(error.message);

    registerButton.disabled = false;

    return;
  }

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
   31. LOGOUT
========================================================= */

logoutButton.addEventListener("click", async () => {
  await supabaseClient.auth.signOut();

  showAuthScreen();
});

/* =========================================================
   32. OBSERVAR SESSÃO
========================================================= */

supabaseClient.auth.onAuthStateChange((event, session) => {
  if (session) {
    showApp();
  } else {
    showAuthScreen();
  }
});

/* =========================================================
   33. EVENTOS
========================================================= */

spinButton.addEventListener("click", spin);

resetButton.addEventListener("click", reset);

window.addEventListener("resize", resizeCanvas);

/* =========================================================
   EVENTOS DA AVALIAÇÃO
========================================================= */

if (saveRatingButton) {

  saveRatingButton.addEventListener(
    "click",
    saveUserRating
  );

}


if (deleteRatingButton) {

  deleteRatingButton.addEventListener(
    "click",
    deleteUserRating
  );

}


setupRatingStars();

/* =========================================================
   34. TECLADO
========================================================= */

document.addEventListener("keydown", (event) => {
  if (event.code === "Space" && !event.repeat) {
    event.preventDefault();

    spin();
  }
});

/* =========================================================
   35. INICIALIZAÇÃO
========================================================= */

updateStats();

checkAuth();
