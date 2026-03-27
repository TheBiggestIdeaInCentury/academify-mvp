<?php
$error = false;

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = strtolower(trim($_POST['email'] ?? ''));
    $password = $_POST['password'] ?? '';

    if ($email === 'admin@academify.xyz' && $password === ':;(Balu/971):;') {
        setcookie('academify_session', 'granted', 0, '/', '', true, true);
        header('Location: landing.html');
        exit;
    } else {
        $error = true;
    }
}

if (isset($_COOKIE['academify_session']) && $_COOKIE['academify_session'] === 'granted') {
    header('Location: landing.html');
    exit;
}
?>
<!DOCTYPE html>
<html lang="de">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Academify — Zugang</title>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700;900&display=swap" rel="stylesheet">
<style>
* { margin: 0; padding: 0; box-sizing: border-box; }
body {
  font-family: 'Inter', sans-serif;
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  background: #0f0d15;
  background-image:
    radial-gradient(ellipse at 20% 50%, rgba(139, 92, 246, 0.15) 0%, transparent 50%),
    radial-gradient(ellipse at 80% 50%, rgba(139, 92, 246, 0.1) 0%, transparent 50%);
  color: #fff;
  overflow: hidden;
}
.gate-container { text-align: center; max-width: 420px; width: 90%; animation: fadeIn 1s ease; }
@keyframes fadeIn { from { opacity: 0; transform: translateY(20px); } to { opacity: 1; transform: translateY(0); } }
.logo { font-size: 2.5rem; font-weight: 900; margin-bottom: 0.5rem; letter-spacing: -1px; }
.logo span { color: #8b5cf6; }
.subtitle { color: rgba(255,255,255,0.5); font-size: 0.85rem; margin-bottom: 2.5rem; letter-spacing: 2px; text-transform: uppercase; }
.login-card {
  background: rgba(255,255,255,0.03); border: 1px solid rgba(255,255,255,0.08);
  border-radius: 1.5rem; padding: 2.5rem 2rem; backdrop-filter: blur(20px);
  position: relative; overflow: hidden;
}
.login-card::before { content: ''; position: absolute; top: 0; left: 0; right: 0; height: 2px; background: linear-gradient(90deg, transparent, #8b5cf6, transparent); }
.shield-icon { font-size: 3rem; margin-bottom: 1rem; }
.card-title { font-size: 1.1rem; font-weight: 700; margin-bottom: 0.5rem; }
.card-desc { color: rgba(255,255,255,0.4); font-size: 0.8rem; margin-bottom: 2rem; line-height: 1.5; }
.input-group { margin-bottom: 1rem; text-align: left; }
.input-group label { display: block; font-size: 0.75rem; font-weight: 600; color: rgba(255,255,255,0.5); margin-bottom: 0.4rem; text-transform: uppercase; letter-spacing: 1px; }
.input-group input {
  width: 100%; padding: 0.85rem 1rem; border-radius: 0.75rem;
  border: 1px solid rgba(255,255,255,0.1); background: rgba(255,255,255,0.05);
  color: #fff; font-size: 0.95rem; font-family: 'Inter', sans-serif;
  outline: none; transition: all 0.3s;
}
.input-group input:focus { border-color: #8b5cf6; box-shadow: 0 0 0 3px rgba(139, 92, 246, 0.15); }
.input-group input::placeholder { color: rgba(255,255,255,0.2); }
.login-btn {
  width: 100%; padding: 0.9rem; border: none; border-radius: 0.75rem;
  background: linear-gradient(135deg, #8b5cf6, #7c3aed); color: #fff;
  font-size: 1rem; font-weight: 700; font-family: 'Inter', sans-serif;
  cursor: pointer; margin-top: 0.5rem; transition: all 0.3s; letter-spacing: 0.5px;
}
.login-btn:hover { transform: translateY(-2px); box-shadow: 0 8px 25px rgba(139, 92, 246, 0.4); }
.login-btn:active { transform: translateY(0); }
.error-msg { color: #ef4444; font-size: 0.8rem; margin-top: 0.75rem; animation: shake 0.4s ease; }
@keyframes shake { 0%, 100% { transform: translateX(0); } 25% { transform: translateX(-8px); } 75% { transform: translateX(8px); } }
.footer-text { margin-top: 2rem; color: rgba(255,255,255,0.2); font-size: 0.7rem; }
.particle { position: fixed; width: 4px; height: 4px; background: rgba(139, 92, 246, 0.3); border-radius: 50%; animation: float linear infinite; pointer-events: none; }
@keyframes float { 0% { transform: translateY(100vh) rotate(0deg); opacity: 0; } 10% { opacity: 1; } 90% { opacity: 1; } 100% { transform: translateY(-10vh) rotate(720deg); opacity: 0; } }
</style>
</head>
<body>
<div class="particle" style="left:10%;animation-duration:8s;width:3px;height:3px;"></div>
<div class="particle" style="left:25%;animation-duration:12s;animation-delay:2s;width:5px;height:5px;"></div>
<div class="particle" style="left:45%;animation-duration:10s;animation-delay:4s;"></div>
<div class="particle" style="left:65%;animation-duration:9s;animation-delay:1s;width:6px;height:6px;"></div>
<div class="particle" style="left:80%;animation-duration:11s;animation-delay:3s;width:3px;height:3px;"></div>
<div class="particle" style="left:90%;animation-duration:7s;animation-delay:5s;"></div>

<div class="gate-container">
  <div class="logo">Acade<span>mi</span>fy</div>
  <p class="subtitle">Plattform im Aufbau</p>
  <div class="login-card">
    <div class="shield-icon">🛡️</div>
    <h2 class="card-title">Geschützter Zugang</h2>
    <p class="card-desc">Diese Plattform befindet sich im Aufbau.<br>Zugang nur mit Einladung.</p>
    <form method="POST">
      <div class="input-group">
        <label>E-Mail</label>
        <input type="email" name="email" placeholder="deine@email.com" required autocomplete="email">
      </div>
      <div class="input-group">
        <label>Passwort</label>
        <input type="password" name="password" placeholder="••••••••" required autocomplete="current-password">
      </div>
      <button type="submit" class="login-btn">Zugang erhalten →</button>
      <?php if ($error): ?>
      <p class="error-msg">⚠️ Ungültige Zugangsdaten. Nur autorisierte Personen haben Zugang.</p>
      <?php endif; ?>
    </form>
  </div>
  <p class="footer-text">© 2026 Academify. Alle Rechte vorbehalten.</p>
</div>
</body>
</html>
