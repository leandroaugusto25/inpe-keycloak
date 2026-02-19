<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="robots" content="noindex, nofollow">
    <title>${msg("loginTitle", realm.displayName)}</title>
    <link rel="stylesheet" href="${url.resourcesPath}/css/styles.css" />
</head>

<body class="neocastflow-bg">

<div class="auth-wrapper">
    <div class="auth-card">

        <header class="auth-header">
            <img src="${url.resourcesPath}/img/levirtus.png" alt="NeoCastFlow" class="auth-logo" />
            <h1 class="auth-title">NeoCastFlow</h1>
            <p class="auth-subtitle">${msg("loginTitle", realm.displayName)}</p>
        </header>

        <div class="auth-content">
            <#if message?has_content>
                <div class="alert alert-${message.type}">
                    ${kcSanitize(message.summary)?no_esc}
                </div>
            </#if>

            <form id="kc-form-login" action="${url.loginAction}" method="post" class="auth-form">

                <div class="form-group">
                    <label for="username">${msg("usernameOrEmail")}</label>
                    <input type="text"
                           id="username"
                           name="username"
                           value="${(login.username!'')}"
                           placeholder="${msg('usernameOrEmail')}"
                           autofocus
                           required />
                </div>

                <div class="form-group">
                    <label for="password">${msg("password")}</label>
                    <input type="password"
                           id="password"
                           name="password"
                           placeholder="${msg('password')}"
                           required />
                </div>

                <div class="form-options">
                    <#if realm.rememberMe>
                        <label class="checkbox">
                            <input type="checkbox"
                                   name="rememberMe"
                                   ${(login.rememberMe!'')?has_content?then('checked','')} />
                            ${msg("rememberMe")}
                        </label>
                    </#if>

                    <#if realm.resetPasswordAllowed>
                        <a href="${url.loginResetCredentialsUrl}" class="link">
                            ${msg("doForgotPassword")}
                        </a>
                    </#if>
                </div>

                <button type="submit" id="kc-login" class="btn-primary">
                    ${msg("doLogIn")}
                </button>
            </form>

            <#if realm.password && social.providers?has_content>
                <div class="social-login">
                    <span>${msg("socialLoginTitle")}</span>
                    <div class="social-buttons">
                        <#list social.providers as p>
                            <a href="${p.loginUrl}" class="btn-social ${p.alias}">
                                ${p.displayName}
                            </a>
                        </#list>
                    </div>
                </div>
            </#if>

            <#if realm.password && realm.registrationAllowed>
                <div class="auth-footer-link">
                    ${msg("noAccount")}
                    <a href="${url.registrationUrl}">${msg("doRegister")}</a>
                </div>
            </#if>

        </div>

        <footer class="auth-footer">
            © 2025 · NeoCastFlow
        </footer>

    </div>
</div>

</body>
</html>
