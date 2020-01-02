<#include "module/macro.ftl">
<@head title="${post.title!} · ${options.blog_title!}" keywords="${post.title!},${options.seo_keywords!}" description="${post.summary!}"></@head>
<@header></@header>
<article class="post" itemscope>
    <div class="content" itemprop="articleBody">
        ${post.formatContent!}
    </div>
    <#include "module/comment.ftl">
    <@comment post=post type="post" />
</article>
<@footer></@footer>