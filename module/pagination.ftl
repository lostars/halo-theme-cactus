<div class="pagination">
    <#if posts.hasPrevious()>
        <a href="${context!}/page/${posts.number-2}"><i class="fas fa-angle-left"></i></a>
    </#if>
    <span class="page-number">Page ${posts.number! + 2} of ${posts.totalPages!}</span>
    <#if posts.hasNext()>
        <a href="${context!}/page/${posts.number+2}"><i class="fas fa-angle-right"></i></a>
    </#if>
</div>