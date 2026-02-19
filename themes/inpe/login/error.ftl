<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="robots" content="noindex, nofollow">
    <title>${msg("errorTitle", realm.displayName)}</title>
    <link rel="stylesheet" href="${url.resourcesPath}/css/styles.css" />
</head>

<body class="neocastflow-bg">

<div class="auth-wrapper">
    <div class="auth-card">

        <header class="auth-header">
            <img src="${url.resourcesPath}/img/levirtus.png" class="auth-logo" />
            <h1 class="auth-title">${msg("errorTitle", realm.displayName)}</h1>
        </header>

        <div class="auth-content">
            <div class="alert alert-error">
                ${kcSanitize(message.summary)?no_esc}
            </div>

            <a href="${url.loginUrl}" class="btn-primary">
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
