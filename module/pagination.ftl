<div class="pagination">
    <#if posts.hasPrevious()>
    <#if posts.number == 1><a href="${context!}"><i class="fas fa-angle-left"></i></a>
        <#else><a href="${context!}/page/${posts.number}"><i class="fas fa-angle-left"></i>
            </#if>
            </#if>
            <span class="page-number">Page <#if posts.number lte 0>1<#else>${posts.number}</#if> of ${posts.totalPages!}</span>
            <#if posts.hasNext()>
                <#if posts.number == posts.totalPages><a href="${context!}"><i class="fas fa-angle-right"></i></a>
                <#else><a href="${context!}/page/${posts.number+2}"><i class="fas fa-angle-right"></i></a>
                </#if>
            </#if>
</div>