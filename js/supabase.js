const SUPABASE_URL = "https://lponbdaxkaykcqwodtxa.supabase.co";

const SUPABASE_PUBLISHABLE_KEY =
  "sb_publishable_nzjpP1k4neyBC9lsvAzTwg_4pGNjXzT";

const supabaseClient = window.supabase.createClient(
  SUPABASE_URL,
  SUPABASE_PUBLISHABLE_KEY,
);

console.log("Supabase conectado:", supabaseClient);
