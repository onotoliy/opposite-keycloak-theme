<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "title">
        ${msg("emailVerifyTitle")}
    <#elseif section = "header">
        ${msg("emailVerifyTitle")}
    <#elseif section = "form">
    <div class="wrap-login">
        <div class="form-left" style="padding: 30px;">
            <p class="instruction input-title" style="display: flex; flex-direction: column;">
                ${msg("lblCheckEmail")}
                    <span _ngcontent-c1="" class="alert-text input-title">
                        ${msg("lblNotGetEmail")} <a style="display: inline; padding: 0;" href="${url.loginAction}">${msg("lblDoPush")}</a> ${msg("lblResendEmail")}
                    </span>
            </p>
        </div>
            <div class="form_right">
                <div class="welcome-text-block">
                    <span class="welcome-title">
                        ${msg("welcomeTitleMessage")}
                    </span>
                    <span class="welcome-text">
                        ${msg("welcomeTextMessage")}
                    </span>
                </div>
            </div>
    </div>
    </#if>
</@layout.registrationLayout>