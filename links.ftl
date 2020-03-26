<#include "module/macro.ftl">
<@head title="友情链接 · ${blog_title!}" keywords="${meta_keywords!}" description="${meta_description!}"></@head>
<@header></@header>
<div id="links">
    <ul class="post-list">
        <@linkTag method="list">
            <#if links?? && links?size gt 0>
                <#list links as link>
                    <li class="post-item">
                        <span>
                            <a class="" href="${link.url}" target="_blank">${link.name}<#if link.description!=''> – ${link.description}</#if></a>
                        </span>
                    </li>
                </#list>
            </#if>
        </@linkTag>
    </ul>
</div>
<@footer></@footer>
