<#include "module/macro.ftl">
<@head title="标签：${tag.name} · ${blog_title!}" keywords="${meta_keywords!}" description="${meta_description!}"></@head>
<@header></@header>
<div id="tag">
    <#include "module/post_entry.ftl">
    <#include "module/pagination.ftl">
</div>
<@footer></@footer>