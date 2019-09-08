<#import "template.ftl" as layout>
<@layout.mainLayout active='password' bodyClass='password'; section>
<div class="wrap-login">
    <div class="form-left">
        <form action="${url.passwordUrl}" class="form-horizontal login-form" method="post">

            <span class="login-form-title">
                ${msg("updatePasswordTitle")}
            </span>

            <div class="wrap-input-title">
                <label for="password-new" class="input-title">${msg("passwordNew")}</label>
            </div>

            <div class="wrap-input">
                <input type="password" class="form-control input100" id="password-new" name="password-new" autocomplete="new-password">
            </div>

            <div class="wrap-input-title">
                <label for="password-confirm" class="control-label input-title" class="two-lines">${msg("passwordConfirm")}</label>
            </div>

            <div class="wrap-input">
                <input type="password" class="form-control input100" id="password-confirm" name="password-confirm" autocomplete="new-password">
            </div>


            <div class="forgot-pass-link"></div>

            <div class="container-login-form-btn" style = "border: none;">
                <div id="kc-form-buttons">
                    <button type="submit" class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!} simple-green-btn" name="submitAction" style="border: none;">${msg("doSave")}</button>
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
</@layout.mainLayout>
