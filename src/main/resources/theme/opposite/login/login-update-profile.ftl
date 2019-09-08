<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "title">
        ${msg("loginProfileTitle")}
    <#elseif section = "header">
        ${msg("loginProfileTitle")}
    <#elseif section = "form">
    <div class="limiter">
        <div class="container-login">
            <div class="wrap-login">

                <form id="kc-update-profile-form " class="${properties.kcFormClass!} login-form" action="${url.loginAction}" method="post">

                    <#if user.editUsernameAllowed>
                        <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('username',properties.kcFormGroupErrorClass!)}">
                            <div class="${properties.kcLabelWrapperClass!} wrap-input-title">
                                <span for="username" class="${properties.kcLabelClass!} input-title">${msg("username")}</span>
                            </div>
                            <div class="${properties.kcInputWrapperClass!} wrap-input">
                                <input type="text" id="username" name="username" value="${(user.username!'')}" class="${properties.kcInputClass!} input100"/>
                            </div>
                        </div>
                    </#if>

                    <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('email',properties.kcFormGroupErrorClass!)}">
                        <div class="${properties.kcLabelWrapperClass!} wrap-input-title">
                            <span for="email" class="${properties.kcLabelClass!} input-title">${msg("email")}</span>
                        </div>
                        <div class="${properties.kcInputWrapperClass!} wrap-input">
                            <input type="text" id="email" name="email" value="${(user.email!'')}" class="${properties.kcInputClass!} input100" />
                        </div>
                    </div>

                    <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('firstName',properties.kcFormGroupErrorClass!)}">
                        <div class="${properties.kcLabelWrapperClass!} wrap-input-title">
                            <span for="firstName" class="${properties.kcLabelClass!} input-title">${msg("firstName")}</span>
                        </div>
                        <div class="${properties.kcInputWrapperClass!}">
                            <input type="text" id="firstName" name="firstName" value="${(user.firstName!'')}" class="${properties.kcInputClass!} input100" />
                        </div>
                    </div>

                    <div class="${properties.kcFormGroupClass!}">
                        <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                            <div class="${properties.kcFormOptionsWrapperClass!}">
                            </div>
                        </div>

                        <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!} restore-container">
                            <input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!} btn btn-primary btn-sm" type="submit" value="${msg("doSubmit")}" />
                        </div>
                    </div>
                </form>

                <div class="login-more">
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
        </div>
    </div>
    </#if>
</@layout.registrationLayout>