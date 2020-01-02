<ul class="post-list">
    <#list posts.content as post>
        <li class="post-item">
            <div class="meta">
                <time datetime="${post.createTime}" itemprop="datePublished">${post.createTime?string("yyyy-MM-dd")}</time>
            </div>
            <span>
                <a class="" href="${context!}/archives/${post.url}">${post.title}</a>
            </span>
        </li>
    </#list>
</ul>