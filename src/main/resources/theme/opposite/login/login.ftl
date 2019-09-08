<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
  <#if section = "title">
    ${msg("loginTitle",(realm.displayName!''))}
  <#elseif section = "header">
    ${msg("loginTitleHtml",(realm.displayNameHtml!''))?no_esc}
  <#elseif section = "form">
    <#if realm.password>
      <div class="wrap-login">
        <form class="login-form" name="baseform" id="kc-form-login " onsubmit="login.disabled = true; return true;"
              action="${url.loginAction}" method="post" autocomplete="off">

          <div class="form-logo"></div>

          <div class="${properties.kcFormGroupClass!}" style="margin-top: 100px; margin-left: -272px;">
            <div class="wrap-input-title">
              <span class="input-title">${msg("lblEmailOrUsername")}</span>
            </div>

            <div class="wrap-input">
              <input class="input100" id="username" name="username" value="${(login.username!'')}" size="45" type="text"
                     placeholder="Введите логин">
            </div>

            <div class="wrap-input-title">
              <span class="input-title">${msg("password")}</span>
            </div>

            <div class="wrap-input" style="display: flex; flex-direction: column; position: relative;">
              <input class="input100" id="password" type="password" name="password" placeholder="Введите пароль">
              <div id="showpass" class="showpass_register" onclick="ShowHidePassword('password')"></div>
            </div>

            <#if realm.resetPasswordAllowed>
              <div class="forgot-pass-link">
                <a class="forgot-password-link" href="${url.loginResetCredentialsUrl}">${msg("emailForgotTitle")}</a>
              </div>
            </#if>

            <div class="wrap-input" id="kc-form-buttons">
              <button class="simple-green-btn" type="submit" name="login" id="kc-login"> ${msg("doLogIn")} </button>
              <#if message?has_content>
                <div class="alert alert-${message.type} error_message_popup" style="display: block">
                  <span>${kcSanitize(message.summary)?no_esc}</span>
                </div>
              </#if>
            </div>
          </div>
        </form>
      </div>

      <script>
          function ShowHidePassword(id) {
              element = document.getElementById(id);
              imgelement = document.getElementById('showpass');
              if (element.type === 'password') {
                  element.type = 'text';
                  imgelement.setAttribute("class", "showpass_no_register");
              } else {
                  element.type = 'password';
                  imgelement.setAttribute("class", "showpass_register");
              }
          }
      </script>
    </#if>
  <#elseif section = "info" >
  </#if>
</@layout.registrationLayout>