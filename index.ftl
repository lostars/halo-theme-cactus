<#include "module/macro.ftl">
<@head title="${blog_title!}" keywords="${meta_keywords!}" description="${meta_description!}"></@head>
<@header></@header>
<#include "module/social.ftl">
<section id="writing">
    <span class="h1"><a href="${archives_url!}">Memories</a></span>
    <#include "module/post_entry.ftl">
    <#include "module/pagination.ftl">
</section>
<@footer></@footer>
