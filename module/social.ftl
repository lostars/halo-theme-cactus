<section id="about">
    <p>
        <#if settings.sign??>
            ${settings.sign}
        </#if>
    </p>
    <p>
        <#if settings.github??>
            <a class="icon" target="_blank" rel="noopener" href="http://github.com/${settings.github}">
                <i class="fab fa-github"></i>
            </a>
        </#if>
        <#if settings.twitch??>
            <a class="icon" target="_blank" rel="noopener" href="https://www.twitch.tv/${settings.twitch}">
                <i class="fab fa-twitch"></i>
            </a>
        </#if>
        <#if settings.spotify??>
            <a class="icon" target="_blank" rel="noopener" href="https://open.spotify.com/user/${settings.spotify}">
                <i class="fab fa-spotify"></i>
            </a>
        </#if>
        <#if settings.email??>
            <a class="icon" target="_blank" rel="noopener" href="mailto:${settings.email}">
                <i class="fas fa-envelope"></i>
            </a>
        </#if>
    </p>
</section>