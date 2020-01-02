<#include "module/macro.ftl">
<@head title="友情链接 · ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}"></@head>
<@header></@header>
<div id="links">
    <ul class="post-list">
        <@linkTag method="list">
            <#if links?? && links?size gt 0>
                <#list links as link>
                    <li class="post-item">
                        <span>
                            <a class="" href="${link.url}">${link.name}<#if link.description!=''> – ${link.description}</#if></a>
                        </span>
                    </li>
                </#list>
            </#if>
        </@linkTag>
    </ul>
</div>
<@footer></@footer>
