<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "title">
        ${msg("registerWithTitle",(realm.displayName!''))}
    <#elseif section = "header">
        ${msg("registerWithTitleHtml",(realm.displayNameHtml!''))?no_esc}
    <#elseif section = "form">
         <div class="wrap-login" style="height: 800px;">
             <div class="form-left">
                 <form id="registry-form" autocomplete="off" action="${url.registrationAction}" class="login-form" method="post" style="height: 800px; padding: 40px 60px;">

                     <span class="login-form-title">
                         ${msg("doRegistry")}
                     </span>

                     <div class="form-group-request wrap-input-title">
                         <span class="input-title">${msg("firstName")}</span>
                     </div>

                     <div class="form-group-request wrap-input">
                         <input class="input100" type="text" id="rfirstName" name="firstName" placeholder="Введите имя">
                         <div id="firstNameError" class="error_message_popup">${msg("missingFirstNameMessage")}</div>
                     </div>

                     <input type="hidden" id="lastName" name="lastName" value="5f1b81b8-4f5d-11e8-9c2d-fa7ae01bbebc">

                     <div class="${properties.kcLabelWrapperClass!} wrap-input-title">
                         <span for="email" class="input-title">${msg("email")}</span>
                     </div>
                     <div class="wrap-input">
                         <input type="text" id="remail" class="input100" name="email" placeholder="Введите email"/>
                         <div id="emailError" class="error_message_popup">
                             ${msg("missingEmailMessage")}
                         </div>

                         <div id="emailError"  class="alert alert-danger error_message_popup" style="display: block">
                             <#if message?has_content>
                                 <#if message.type = 'error'>
                                     <#if message.summary = msg("invalidEmailMessage")>
                                         <div id="emailError" class="error_message_popup" style="display: block">${msg("invalidEmailMessage")}</div>
                                     </#if>
                                     <#if message.summary = msg("emailExistsMessage")>
                                         ${msg("lblAuthText")} <a tabindex="5" href="${url.loginResetCredentialsUrl}">${msg("doForgotPassword")}</a> ${msg("lblForResetPassword")}
                                     </#if>
                                 </#if>
                             </#if>
                         </div>
                     </div>

                     <div class="form-group-request wrap-input-title">
                         <span for="user.attributes.mobile" class="input-title">${msg("mobilePhoneNumber")}</span>
                     </div>

                     <div class="form-group-request wrap-input">
                         <input class="input100" type="text" id="user.attributes.mobile" name="user.attributes.mobile" placeholder="+7(___)___-__-__">
                         <div id="phoneNumberError" class="error_message_popup">${msg("missingMobilePhoneNumber")}</div>
                     </div>


                     <div class="form-group-request wrap-input-title">
                         <span class="input-title">${msg("password")}</span>
                     </div>

                     <div class="form-group-request wrap-input" style="display: flex; flex-direction: column; position: relative;">
                            <input class="input100" id="rpassword" name="password" type="password" style="margin-bottom: 20px" placeholder="Введите пароль">
                            <div id="showpass" class="showpass_register" onclick="ShowHidePassword('rpassword')"></div>
                            <input type="hidden" id="password-confirm" name="password-confirm">
                         <div id="passwordError" class="error_message_popup">${msg("missingPasswordMessage")}</div>
                     </div>

                     <div class="container-login-form-btn btn-group btn-primary btn-request reg_form">
                         <button id="registry-btn" class="btn btn-primary simple-green-btn" name="register" type="button">${msg("doRegister")}</button>
                     </div>

                     <input type="hidden" id="username" name="username">


                     <div class="container-singup-form-button">
                         <div id="kc-registration">
                             <span class="simple-white-btn" >
                                 <a href="${url.loginUrl}" style="padding: 0 42%; font-weight: bold; font-size: 12px; line-height: 19px; text-align: center; text-transform: uppercase; color: #92969E; text-decoration: none;">
                                     ${msg("doLogIn")}
                                 </a>
                             </span>
                         </div>
                     </div>

                     <div id="kc-info-wrapper" class="social-quick-login" style="margin: 10px 0;">
                         <div id="kc-social-providers">
                             <ul class="social-login-list">
                                 <#if social.providers?has_content>
                                     <#list social.providers as p>
                                         <li>
                                             <div class="social-ico">
                                                 <a href="${p.loginUrl}" id="zocial-${p.alias}" class="social-ico-link">
                                                     <img src="${url.resourcesPath}/img/ico_${p.alias}.png">
                                                 </a>
                                             </div>
                                         </li>
                                     </#list>
                                 </#if>
                             </ul>
                         </div>
                     </div>

                     <script>
                         var phoneMask = IMask(document.getElementById('user.attributes.mobile'), {mask: '+{7}(000)000-00-00'});

                         var phoneNumberInput = $('#user\\.attributes\\.mobile');


                         var emailInput = $('#remail');
                         var nameInput = $('#rfirstName');
                         var passwordInput = $('#rpassword');
                         var from_submit = $('#registry-form');


                         emailInput.on('input', function () {
                             var text = emailInput.val();
                             $('#username').val(text);
                         });

                         passwordInput.on('input', function () {
                             var text = passwordInput.val();
                             $('#password-confirm').val(text);
                         });

                         $('#registry-btn').click(function () {
                             if(nameInput.hasClass('validation_error') || passwordInput.hasClass('validation_error') || phoneNumberInput.hasClass('validation_error') || emailInput.hasClass('validation_error')) {
                                 nameInput.removeClass('validation_error');
                                 passwordInput.removeClass('validation_error');
                                 phoneNumberInput.removeClass('validation_error');
                                 emailInput.removeClass('validation_error');
                                 $("#firstNameError").css("display", "none");
                                 $("#passwordError").css("display", "none");
                                 $("#emailError").css("display", "none");
                                 $("#phoneNumberError").css("display", "none");
                             }
                             if ((nameInput.val().trim().length > 0) && (passwordInput.val().trim().length > 0) && (phoneNumberInput.val().length === 16) && (emailInput.val().trim().length > 0)) {
                                 from_submit.submit();
                             }
                             if(nameInput.val() === "") {
                                 $("#firstNameError").css("display", "block");
                                 nameInput.addClass('validation_error');
                             }
                             if (passwordInput.val() === "") {
                                 $("#passwordError").css("display", "block");
                                 passwordInput.addClass('validation_error');
                             }
                             if (emailInput.val() === "") {
                                 $("#emailError").css("display", "block");
                                 emailInput.addClass('validation_error');
                             }
                             if(phoneNumberInput.val().length!==16) {
                                 $("#phoneNumberError").css("display", "block");
                                 phoneNumberInput.addClass('validation_error');
                             }
                         });

                         function ShowHidePassword(id) {
                             element = document.getElementById(id);
                             imgelement=document.getElementById('showpass');
                             if (element.type === 'password') {
                                 element.type = 'text';imgelement.setAttribute("class", "showpass_no_register");
                             } else {
                                 element.type = 'password';imgelement.setAttribute("class", "showpass_register");
                             }
                         }

                     </script>
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