<#include "module/macro.ftl">
<@head title="分类：${category.name} · ${blog_title!}" keywords="${meta_keywords!}" description="${meta_description!}"></@head>
<@header></@header>
<div id="category">
    <#include "module/post_entry.ftl">
    <#include "module/pagination.ftl">
</div>
<@footer></@footer>