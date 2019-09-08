<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <#if section = "title">
    ${msg("errorTitle")}
    <#elseif section = "header">
    ${msg("errorTitleHtml")?no_esc}
    <#elseif section = "form">
    <div id="kc-error-message">
        <div class="alert alert-danger">
            <span _ngcontent-c1="" class="alert-text">${message.summary?no_esc}</span>
        </div>
        <#if client?? && client.baseUrl?has_content>
            <p><a id="backToApplication" href="${client.baseUrl}">${msg("backToAuth")?no_esc}</a></p>
        <#else>
            <p><a style="cursor: pointer;" onclick="window.location.href=window.localStorage.getItem('agrodigital'); return true;">${msg("backToAuth")?no_esc}</a></p>
        </#if>
    </div>
    </#if>
</@layout.registrationLayout>