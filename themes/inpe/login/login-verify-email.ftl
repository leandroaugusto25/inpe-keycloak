<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="robots" content="noindex, nofollow">
    <title>${msg("verifyEmailTitle", realm.displayName)}</title>
    <link rel="stylesheet" href="${url.resourcesPath}/css/styles.css" />
</head>

<body class="neocastflow-bg">

<div class="auth-wrapper">
    <div class="auth-card">

        <header class="auth-header">
            <img src="${url.resourcesPath}/img/levirtus.png" class="auth-logo" />
            <h1 class="auth-title">NeoCastFlow</h1>
            <p class="auth-subtitle">
                ${msg("verifyEmailTitle", realm.displayName)}
            </p>
        </header>

        <div class="auth-content">

            <div class="alert alert-info">
                ${msg("verifyEmailMessage")}
            </div>

            <p style="font-size:14px; color:#374151; text-align:center; margin-top:12px;">
                ${msg("verifyEmailInstruction")}
            </p>

            <a href="${url.loginUrl}" class="btn-primary" style="margin-top:24px; display:block;">
                Voltar ao login
            </a>

        </div>

        <footer class="auth-footer">
            © 2025 · NeoCastFlow
        </footer>

    </div>
</div>

</body>
</html>
