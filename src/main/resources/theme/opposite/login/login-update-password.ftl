<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "title">
        ${msg("updatePasswordTitle")}
    <#elseif section = "header">
        ${msg("updatePasswordTitle")}
    <#elseif section = "form">
    <div class="wrap-login">
        <div class="form-left">
            <form id="kc-passwd-update-form" class="${properties.kcFormClass!} login-form" action="${url.loginAction}" method="post">

                <span class="login-form-title">
                    ${msg("updatePasswordTitle")}
                </span>

                <div class="${properties.kcFormGroupClass!}">
                    <div class="${properties.kcLabelWrapperClass!} wrap-input-title">
                        <label for="password-new" class="${properties.kcLabelClass!} input-title">${msg("passwordNew")}</label>
                    </div>
                    <div class="${properties.kcInputWrapperClass!} wrap-input">
                        <input type="password" id="password-new" name="password-new" class="${properties.kcInputClass!} input100" autofocus autocomplete="new-password" />
                    </div>
                </div>

                <div class="${properties.kcFormGroupClass!}">
                    <div class="${properties.kcLabelWrapperClass!} wrap-input-title">
                        <label for="password-confirm" class="${properties.kcLabelClass!} input-title">${msg("passwordConfirm")}</label>
                    </div>
                    <div class="${properties.kcInputWrapperClass!} wrap-input">
                        <input type="password" id="password-confirm" name="password-confirm" class="${properties.kcInputClass!} input100" autocomplete="new-password" />
                    </div>
                </div>

                <div class="${properties.kcFormGroupClass!}">
                    <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                        <div class="${properties.kcFormOptionsWrapperClass!}">
                        </div>
                    </div>

                    <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                        <button class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!} btn btn-primary btn-sm restore-container simple-green-btn" type="submit">${msg("doSubmit")}</button>
                    </div>
                </div>
            </form>
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
