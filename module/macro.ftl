<#import "/common/macro/common_macro.ftl" as common>
<#macro head title,keywords,description>
<!DOCTYPE html>
<html lang=en>
<head>
    <!-- so meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="HandheldFriendly" content="True">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="${description!}">
    <meta name="keywords" content="${keywords!}"/>
    <link rel="shortcut icon" href="">
    <link rel="icon" type="image/png" href="" sizes="192x192">
    <link rel="apple-touch-icon" sizes="180x180" href="">
    <!-- title -->
    <title>${title!}</title>
    <!-- styles -->
    <link rel="stylesheet" href="${theme_base!}/source/css/style.css">
    <!-- persian styles -->
    <link rel="stylesheet" href="${theme_base!}/source/css/rtl.css">
    <!-- rss -->
</head>
<body class="max-width mx-auto px3 ltr">
<#if is_post??>
    <@header_post />
</#if>
<div class="content index py4">
</#macro>
<#macro header_post>
    <div id="header-post">
        <a id="menu-icon" href="#"><i class="fas fa-bars fa-lg"></i></a>
        <a id="menu-icon-tablet" href="#"><i class="fas fa-bars fa-lg"></i></a>
        <a id="top-icon-tablet" href="#" onclick="$('html, body').animate({ scrollTop: 0 }, 'fast');" style="display:none;"><i class="fas fa-chevron-up fa-lg"></i></a>
        <span id="menu">
        <span id="nav">
            <@nav />
        </span>
        <br/>
        <span id="actions">
            <ul>
                <#if prevPost??>
                    <li><a class="icon" href="${prevPost.fullPath!}"><i class="fas fa-chevron-left" aria-hidden="true" onmouseover="$('#i-prev').toggle();" onmouseout="$('#i-prev').toggle();"></i></a></li>
                </#if>
                <#if nextPost??>
                    <li><a class="icon" href="${nextPost.fullPath!}"><i class="fas fa-chevron-right" aria-hidden="true" onmouseover="$('#i-next').toggle();" onmouseout="$('#i-next').toggle();"></i></a></li>
                </#if>
                <li><a class="icon" href="#" onclick="$('html, body').animate({ scrollTop: 0 }, 'fast');"><i class="fas fa-chevron-up" aria-hidden="true" onmouseover="$('#i-top').toggle();" onmouseout="$('#i-top').toggle();"></i></a></li>
                <li><a class="icon" href="#"><i class="fas fa-share-alt" aria-hidden="true" onmouseover="$('#i-share').toggle();" onmouseout="$('#i-share').toggle();" onclick="$('#share').toggle();return false;"></i></a></li>
            </ul>
            <span id="i-prev" class="info" style="display:none;">Previous</span>
            <span id="i-next" class="info" style="display:none;">Next</span>
            <span id="i-top" class="info" style="display:none;">Top</span>
            <span id="i-share" class="info" style="display:none;">Share</span>
        </span>
        <br/>
        <div id="share" style="display: none">
            <@share />
        </div>
        <div id="toc">
            <ol class="toc">
            </ol>
        </div>
    </span>
    </div>
</#macro>
<#macro share>
    <ul>
        <li><a class="icon" href="https://twitter.com/share?url=${post.fullPath!}"><i class="fab fa-twitter " aria-hidden="true"></i></a></li>
        <li><a class="icon" href="https://www.facebook.com/sharer.php?u=${post.fullPath!}"><i class="fab fa-facebook fa-lg" aria-hidden="true"></i></a></li>
        <li><a class="icon" href="https://reddit.com/submit?url=${post.fullPath!}"><i class="fab fa-reddit fa-lg" aria-hidden="true"></i></a></li>
        <li><a class="icon" href="https://www.tumblr.com/share/link?url=${post.fullPath!}"><i class="fab fa-tumblr fa-lg" aria-hidden="true"></i></a></li>
    </ul>
</#macro>
<#macro footer>
<footer id="footer">
    <div class="footer-left">
        ${options.blog_footer_info!}
    </div>
</footer>
</div>
</div>
<!-- styles -->
<link rel="stylesheet" href="${theme_base!}/source/plugins/font-awesome/css/all.min.css">
<link rel="stylesheet" href="${theme_base!}/source/plugins/justified-gallery/css/justifiedGallery.min.css">
<!-- jquery -->
<script src="${theme_base!}/source/plugins/jquery/jquery.min.js"></script>
<script src="${theme_base!}/source/plugins/justified-gallery/js/jquery.justifiedGallery.min.js"></script>
<script src="${theme_base!}/source/js/main.js"></script>
<!-- code-prettify -->
<link rel="stylesheet" href="${theme_base!}/source/plugins/google-code-prettify/skins/github-v2-custom.css">
<script type="text/javascript">
    $(document).ready(function(){
        $('pre').each(function() {
            var el = $(this).find('code');
            var code = el.html();
            var lang = el.attr('class');
            if (lang) {
                $(this).addClass('prettyprint linenums').html(code);
            }
        });
        prettyPrint();
        $("code").addClass("prettyprint linenums");
    });
</script>
<script src="${theme_base!}/source/plugins/google-code-prettify/prettify.js"></script>

<!-- toc generate -->
<#if is_post??>
    <script>
        var liList = '';
        $('h2').each(function (index, element) {
            $(this).attr('id', element.innerHTML);
            liList += `<li class="toc-item toc-level-2"><a class="toc-link" href="#`+ element.innerHTML + `"><span class="toc-text">` + element.innerHTML +`</span></a><ol class="toc-child">`;
            var h3 = $(this).next();
            while (true) {
                if (h3.length < 1) {
                    break;
                }
                var tagName = h3.get(0).tagName;
                if (tagName == 'H2') {
                    break;
                }
                if (tagName == 'H3') {
                    $(this).attr('id', h3.text());
                    liList += `<li class="toc-item toc-level-3"><a class="toc-link" href="#`
                        + h3.text() + `"><span class="toc-text">`+ h3.text() +`</span></a></li>`;
                }
                h3 = h3.next();
            }
            liList += `</ol></li>`;
        });
        $(liList).appendTo($('.toc'))
    </script>
</#if>
<!-- search -->

<!-- Google Analytics -->

<!-- Baidu Analytics -->

<!-- Disqus Comments -->
<@common.statistics />
</body>
</html>
</#macro>
<#macro header>
    <header id="header">
        <div id="nav">
            <@nav></@nav>
        </div>
    </header>
</#macro>
<#macro nav>
    <ul>
        <@menuTag method="list">
            <#list menus?sort_by('priority') as menu>
                <li><a href="${menu.url}" target="${menu.target!}">${menu.name}</a></li>
            </#list>
        </@menuTag>
    </ul>
</#macro>
