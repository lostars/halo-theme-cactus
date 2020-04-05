<#include "module/macro.ftl">
<@head title="${post.title!} · ${blog_title!}" keywords="${post.title!},${meta_keywords!},${tagWords!}" description="${post.summary!}"></@head>
<article class="post" itemscope="">
    <header>
        <h1 class="posttitle" itemprop="name headline">${post.title}</h1>
        <div class="meta">
                <span class="author" itemprop="author" itemscope="" >
                    <span itemprop="name">${user.nickname}</span>
                </span>
            <div class="postdate">
                <time datetime="${post.createTime}" itemprop="datePublished">${post.createTime?string("yyyy-MM-dd")}</time>
            </div>
            <#if tags?size gt 0>
                <div class="article-tag">
                    <#list tags as tag>
                        <i class="fas fa-tag"></i>
                        <a class="tag-link" href="${tag.fullPath?replace(".html", "")!}">${tag.name}</a>&nbsp;
                    </#list>
                </div>
            </#if>
        </div>
    </header>

    <div class="content" itemprop="articleBody">
        ${post.formatContent!}

        <blockquote>
            <p>版权所有丨转载请注明出处：${post.fullPath}</p>
        </blockquote>
    </div>
    <#include "module/comment.ftl">
    <@comment post=post type="post" />
</article>

<div id="footer-post-container">
    <div id="footer-post" style="display: none;">

        <div id="nav-footer" style="display: none">
            <@nav></@nav>
        </div>

        <div id="toc-footer" style="display: none">
            <ol class="toc">

            </ol>
        </div>

        <div id="share-footer" style="display: none">
            <@share />
        </div>
        <div id="actions-footer">
            <a id="menu" class="icon" href="#" onclick="$('#nav-footer').toggle();return false;"><i class="fas fa-bars fa-lg" aria-hidden="true"></i> Menu</a>
            <a id="toc" class="icon" href="#" onclick="$('#toc-footer').toggle();return false;"><i class="fas fa-list fa-lg" aria-hidden="true"></i> TOC</a>
            <a id="share" class="icon" href="#" onclick="$('#share-footer').toggle();return false;"><i class="fas fa-share-alt fa-lg" aria-hidden="true"></i> Share</a>
            <a id="top" style="" class="icon" href="#" onclick="$('html, body').animate({ scrollTop: 0 }, 'fast');"><i class="fas fa-chevron-up fa-lg" aria-hidden="true"></i> Top</a>
        </div>
    </div>
</div>
<@footer></@footer>
