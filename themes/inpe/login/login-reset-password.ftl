<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="robots" content="noindex, nofollow">
    <title>${msg("resetPasswordTitle", realm.displayName)}</title>
    <link rel="stylesheet" href="${url.resourcesPath}/css/styles.css" />
</head>

<body class="neocastflow-bg">

<div class="auth-wrapper">
    <div class="auth-card">

        <header class="auth-header">
            <img src="${url.resourcesPath}/img/levirtus.png" class="auth-logo" />
            <h1 class="auth-title">${msg("resetPasswordTitle", realm.displayName)}</h1>
        </header>

        <div class="auth-content">

            <#if message?has_content>
                <div class="alert alert-${message.type}">
                    ${kcSanitize(message.summary)?no_esc}
                </div>
            </#if>

            <form action="${url.loginAction}" method="post" class="auth-form">

                <div class="form-group">
                    <label for="username">${msg("usernameOrEmail")}</label>
                    <input type="text"
                           id="username"
                           name="username"
                           value="${(username!'')}"
                           placeholder="${msg('usernameOrEmail')}"
                           autofocus
                           required />
                    <small class="helper-text">
                        ${msg("resetPasswordInstructions")}
                    </small>
                </div>

                <button type="submit" class="btn-primary">
                    ${msg("doSubmit")}
                </button>
            </form>

            <div class="auth-footer-link">
                <a href="${url.loginUrl}">Voltar ao login</a>
            </div>

        </div>

        <footer class="auth-footer">
            © 2025 · NeoCastFlow
        </footer>

    </div>
</div>

</body>
</html>
