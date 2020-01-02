<#include "module/macro.ftl">
<@head title="标签：${tag.name} · ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}"></@head>
<@header></@header>
<div id="tag">
    <#include "module/post_entry.ftl">
    <#include "module/pagination.ftl">
</div>
<@footer></@footer>