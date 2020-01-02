<#include "module/macro.ftl">
<@head title="${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}"></@head>
<@header></@header>
<#include "module/social.ftl">
<section id="writing">
    <span class="h1"><a href="/archives">Memories</a></span>
    <#include "module/post_entry.ftl">
    <#include "module/pagination.ftl">
</section>
<@footer></@footer>
