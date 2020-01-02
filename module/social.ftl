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
        <#if settings.email??>
            <a class="icon" target="_blank" rel="noopener" href="mailto:${settings.email}">
                <i class="fas fa-envelope"></i>
            </a>
        </#if>
<#--        <a class="icon" target="_blank" rel="noopener" href="/hexo-theme-cactus/cactus-light/public/">-->
<#--            <i class="fab fa-twitter"></i>-->
<#--        </a>-->
<#--        <a class="icon" target="_blank" rel="noopener" href="/hexo-theme-cactus/cactus-light/public/">-->
<#--            <i class="fab fa-facebook"></i>-->
<#--        </a>-->
<#--        <a class="icon" target="_blank" rel="noopener" href="/hexo-theme-cactus/cactus-light/public/">-->
<#--            <i class="fab fa-linkedin"></i>-->
<#--        </a>-->
<#--        <a class="icon" target="_blank" rel="noopener" href="mailto:name@email.com">-->
<#--            <i class="fas fa-envelope"></i>-->
<#--        </a>-->
    </p>
</section>