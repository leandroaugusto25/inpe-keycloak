<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="robots" content="noindex, nofollow">
    <title>${msg("updateProfileTitle", realm.displayName)}</title>
    <link rel="stylesheet" href="${url.resourcesPath}/css/styles.css" />
</head>

<body class="neocastflow-bg">

<div class="auth-wrapper">
    <div class="auth-card">

        <header class="auth-header">
            <img src="${url.resourcesPath}/img/levirtus.png" class="auth-logo" />
            <h1 class="auth-title">NeoCastFlow</h1>
            <p class="auth-subtitle">
                ${msg("updateProfileTitle", realm.displayName)}
            </p>
        </header>

        <div class="auth-content">

            <#if message?has_content>
                <div class="alert alert-${message.type}">
                    ${kcSanitize(message.summary)?no_esc}
                </div>
            </#if>

            <form action="${url.loginAction}" method="post" class="auth-form">

                <#list profile.attributes as attribute>
                    <div class="form-group">
                        <label for="${attribute.name}">
                            ${attribute.displayName}
                        </label>
                        <input
                            type="text"
                            id="${attribute.name}"
                            name="${attribute.name}"
                            value="${(attribute.value!'')}"
                            <#if attribute.required>required</#if>
                        />
                    </div>
                </#list>

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
