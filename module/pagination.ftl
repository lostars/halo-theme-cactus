<div class="pagination">
    <#if posts.hasPrevious()>
    <#if posts.number == 1><a href="${context!}"><i class="fas fa-angle-left"></i></a>
    <#else><a href="${context!}/page/${posts.number}"><i class="fas fa-angle-left"></i></a>
            </#if>
            </#if>
            <span class="page-number">Page <#if posts.number lt 1>1<#else>${posts.number + 1}</#if> of ${posts.totalPages!}</span>
            <#if posts.hasNext()>
                <#if posts.number == posts.totalPages><a href="${context!}"><i class="fas fa-angle-right"></i></a>
                <#else><a href="${context!}/page/${posts.number+2}"><i class="fas fa-angle-right"></i></a>
                </#if>
            </#if>
</div>