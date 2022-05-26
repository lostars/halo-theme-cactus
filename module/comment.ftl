<#macro comment post,type>
    <#if !post.disallowComment!false>
        <script src="${theme_base!}/source/js/vue.min.js"></script>
        <script src="${theme_base!}/source/js/halo-comment.min.js"></script>
        <halo-comment id="${post.id}" type="${type}"/>
    </#if>
</#macro>