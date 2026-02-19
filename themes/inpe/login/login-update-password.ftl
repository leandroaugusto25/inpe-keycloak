<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="robots" content="noindex, nofollow">
    <title>${msg("updatePasswordTitle", realm.displayName)}</title>
    <link rel="stylesheet" href="${url.resourcesPath}/css/styles.css" />
</head>

<body class="neocastflow-bg">

<div class="auth-wrapper">
    <div class="auth-card">

        <header class="auth-header">
            <img src="${url.resourcesPath}/img/levirtus.png" class="auth-logo" />
            <h1 class="auth-title">${msg("updatePasswordTitle", realm.displayName)}</h1>
        </header>

        <div class="auth-content">

            <#if message?has_content>
                <div class="alert alert-${message.type}">
                    ${kcSanitize(message.summary)?no_esc}
                </div>
            </#if>

            <form action="${url.loginAction}" method="post" class="auth-form">

                <div class="form-group">
                    <label for="password-new">${msg("passwordNew")}</label>
                    <input type="password" id="password-new" name="password-new" required />
                </div>

                <div class="form-group">
                    <label for="password-confirm">${msg("passwordConfirm")}</label>
                    <input type="password" id="password-confirm" name="password-confirm" required />
                </div>

                <label class="checkbox">
                    <input type="checkbox" name="logoutOtherDevices" value="true" />
                    ${msg("logoutOtherDevices")}
                </label>

                <button type="submit" class="btn-primary">
                    ${msg("doSubmit")}
                </button>
            </form>

        </div>

        <footer class="auth-footer">
            © 2025 · NeoCastFlow
        </footer>

    </div>
</div>

</body>
</html>
