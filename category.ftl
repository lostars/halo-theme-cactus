<#include "module/macro.ftl">
<@head title="分类：${category.name} · ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}"></@head>
<@header></@header>
<div id="category">
    <#include "module/post_entry.ftl">
    <#include "module/pagination.ftl">
</div>
<@footer></@footer>