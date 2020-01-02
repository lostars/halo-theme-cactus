<#include "module/macro.ftl">
<@head title="归档 · ${options.blog_title!}" keywords="文章归档,${options.seo_keywords!}" description="${options.seo_description!}"></@head>
<@header></@header>
<div id="archive">
    <ul class="post-list">
        <@postTag method="archiveYear">
            <#list archives as archive>
                <h2>${archive.year?c}</h2>
                <#list archive.posts?sort_by("createTime")?reverse as post>
                    <li class="post-item">
                        <div class="meta">
                            <time datetime="${post.createTime}" itemprop="datePublished">${post.createTime?string("yyyy-MM-dd")}</time>
                        </div>
                        <span>
                            <a class="" href="${context!}/archives/${post.url!}">${post.title!}</a>
                        </span>
                    </li>
                </#list>
            </#list>
        </@postTag>
    </ul>
</div>
<@footer></@footer>
