<#include "module/macro.ftl">
<@head title="${blog_title!}" keywords="${meta_keywords!}" description="${meta_description!}"></@head>
<@header></@header>
<#include "module/social.ftl">
<section id="writing">
    <span class="h1"><a href="${archives_url!}">Memories</a></span>
    <#include "module/post_entry.ftl">
    <#if posts.totalPages gt 1>
        <@paginationTag method="tagPosts" page="${posts.number}" total="${posts.totalPages}" display="3">
            <div class="pagination">
                <#if pagination.hasPrev>
                    <a href="${pagination.prevPageFullPath?replace(".html", "")}"><i class="fas fa-angle-left"></i></a>
                </#if>
                <span class="page-number">Page ${posts.number + 1} of ${posts.totalPages}</span>
                <#if pagination.hasNext>
                    <a href="${pagination.nextPageFullPath?replace(".html", "")}"><i class="fas fa-angle-right"></i></a>
                </#if>
            </div>
        </@paginationTag>
    </#if>
</section>
<@footer></@footer>
