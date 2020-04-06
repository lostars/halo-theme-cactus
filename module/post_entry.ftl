<ul class="post-list">
    <#if settings.category??>
        <@postTag method="listByCategoryId" categoryId="${settings.category}">
            <#list posts as post>
                <li class="post-item">
                    <div class="meta">
                        <time datetime="${post.createTime}" itemprop="datePublished">${post.createTime?string("yyyy-MM-dd")}</time>
                    </div>
                    <span>
                <a class="" href="${post.fullPath!}">${post.title}</a>
            </span>
                </li>
            </#list>
        </@postTag>
    <#else >
        <#list posts.content as post>
            <li class="post-item">
                <div class="meta">
                    <time datetime="${post.createTime}" itemprop="datePublished">${post.createTime?string("yyyy-MM-dd")}</time>
                </div>
                <span>
                <a class="" href="${post.fullPath!}">${post.title}</a>
            </span>
            </li>
        </#list>
    </#if>
</ul>