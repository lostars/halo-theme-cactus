<#macro comment post,type>
    <#if !post.disallowComment!false>
        <script src="${theme_base!}/source/js/vue.min.js"></script>
        <script src="${options.comment_internal_plugin_js!'${theme_base!}/source/js/halo-comment.min.js'}"></script>
        <halo-comment id="${post.id}" type="${type}"/>
    </#if>
</#macro>