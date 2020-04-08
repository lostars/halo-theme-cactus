<#include "module/macro.ftl">
<@head title="标签：${tag.name} · ${blog_title!}" keywords="${meta_keywords!}" description="${meta_description!}"></@head>
<@header></@header>
<div id="tag">
    <#include "module/post_entry.ftl">
    <#if posts.totalPages gt 1>
        <@paginationTag method="tagPosts" page="${posts.number}" total="${posts.totalPages}" display="3" slug="${tag.slug!}">
            <div class="pagination">
                <#if pagination.hasPrev>
                    <a href="${pagination.prevPageFullPath!}"><i class="fas fa-angle-left"></i></a>
                </#if>
                <span class="page-number">Page ${posts.number} of ${posts.totalPages}</span>
                <#if pagination.hasNext>
                    <a href="${pagination.nextPageFullPath!}"><i class="fas fa-angle-right"></i></a>
                </#if>
            </div>
        </@paginationTag>
    </#if>
</div>
<@footer></@footer>