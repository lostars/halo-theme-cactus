<div class="pagination">
    <#if posts.number == 1><a href="${context!}"><i class="fas fa-angle-left"></i></a>
    <#else><a href="${context!}/page/${posts.number}"><i class="fas fa-angle-left"></i>
        </#if>
            <span class="page-number">Page <#if posts.number lte 1>1<#else>${posts.number}</#if> of ${posts.totalPages!}</span>
        <#if posts.number == posts.totalPages><a href="${context!}"><i class="fas fa-angle-right"></i></a>
        <#else><a href="${context!}/page/${posts.number+2}"><i class="fas fa-angle-right"></i></a>
        </#if>
</div>