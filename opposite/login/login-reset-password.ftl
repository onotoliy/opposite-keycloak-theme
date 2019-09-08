<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "title">
        ${msg("emailForgotTitle")}
    <#elseif section = "header">
        ${msg("emailForgotTitle")}
    <#elseif section = "form">
    <div class="wrap-login">
        <div class="form-left">
            <form id="kc-reset-password-form" class="${properties.kcFormClass!} login-form" action="${url.loginAction}" method="post">

                <span class="login-form-title">
                    ${msg("doForgotPassword")}
                </span>

                <div class="${properties.kcFormGroupClass!}">

                    <div class="${properties.kcLabelWrapperClass!} wrap-input-title">
                        <span for="username" class="${properties.kcLabelClass!} input-title">${msg("lblEmailOrUsername")}</span>
                    </div>

                    <div class="${properties.kcInputWrapperClass!} wrap-input">
                        <input type="email" id="username" name="username" class="${properties.kcInputClass!} input100" placeholder="Введите email"/>
                    </div>

                    <p class="subtitle fancy">
                        <span style="font-size: 12px;
                                            line-height: 15px;
                                            text-align: center;
                                            color: #92969E;
                                            mix-blend-mode: normal;
                                            opacity: 0.5;">
                            ${msg("orChoice")}
                        </span>
                    </p>

                    <div class="${properties.kcLabelWrapperClass!} wrap-input-title">
                        <span for="username" class="${properties.kcLabelClass!} input-title">${msg("mobilePhoneNumber")}</span>
                    </div>

                    <div class="${properties.kcInputWrapperClass!} wrap-input">
                        <input type="text" id="user.attributes.mobile" name="user.attributes.mobile" class="${properties.kcInputClass!} input100" placeholder="+7(___)___-__-__"/>
                    </div>
                </div>

                <div class="forgot-pass-link"></div>

                <div class="${properties.kcFormGroupClass!} container-login-form-btn" style="border: none;">
                    <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                        <button id="submitAndValidate" class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!} restore-button btn btn-primary btn-sm simple-green-btn" style="border: none;"> ${msg("changePasswordConfirm")} </button>
                    </div>
                </div>

                <div class="container-singup-form-button">
                    <div id="kc-registration">
                        <span class="simple-white-btn" >
                            <a href="${url.loginUrl}" style="padding: 0 42%; font-weight: bold; font-size: 12px; line-height: 19px; text-align: center; text-transform: uppercase; color: #92969E; text-decoration: none;">
                                ${msg("doLogIn")}
                            </a>
                        </span>
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

    <script>
        var phoneMask = IMask(document.getElementById('user.attributes.mobile'), {mask: '+{7}(000)000-00-00'});

        var emailInput = $("#username");
        var phoneInput = $("#user\\.attributes\\.mobile");


        phoneInput.on('input', function () {
            if(phoneInput.val().length > 3){
                emailInput.prop("disabled", true);
            } else {
                emailInput.prop("disabled", false);
            }
        });

        emailInput.on('input', function () {
            if(emailInput.val().length > 0) {
                phoneInput.prop("disabled", true);
            } else {
                phoneInput.prop("disabled", false);
            }
        });

        $('#submitAndValidate').on(click, function () {
            if (phoneInput.val().length === 16) {
                $('#kc-reset-password-form').submit();
            } else if((emailInput.val().length > 0) && ((emailInput.match(/.+?@.+/g) || []).length!==1)) {
                emailInput.css('border-bottom', '2px solid red');
            } else {
                $('#kc-reset-password-form').submit();
            }
        });
    </script>
    </#if>
</@layout.registrationLayout>
