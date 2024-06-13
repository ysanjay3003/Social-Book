<!--<label for="darkmodetoggle">
    <input type="checkbox" id="darkmodetoggle" />
</label>-->
<div class="login">
  <img src="assets/images/sb-logo.png " class="mb-4" height="66"/>
  <div class="card col-lg-3 col-sm-12 col-md-4 border rounded p-3 container1">
    <div class="title my-3 d-flex align-items-center justify-content-center" >
            <b>Login to Socialbook</b>
    </div>
    <form method="post" action="assets/php/actions.php?login" class="d-flex flex-column">

      <div class="form-floating">
        <input type="text" name="username_email" value="<?=showFormData('username_email')?>" class="form-control rounded-0" placeholder="username/email" />
        <label for="floatingInput">username/email</label>
      </div>
        <?=showError('username_email')?>
      <div class="form-floating mt-2 d-flex align-items-center">
        <input type="password" name="password" class="form-control" id="password" placeholder="Password" />
        <label>password</label>
        <span class="show_psd" onclick="password_show_hide();">
           <i class="fas fa-eye" id="show_eye"></i>
           <i class="fas fa-eye-slash d-none" id="hide_eye"></i>
        </span>
      </div>
        <?=showError('password')?>
        <?=showError('checkuser')?>
      <div class="mt-3 d-flex justify-content-between align-items-center">
        <button class="btn btn-primary" type="submit">Sign in</button>
        <a href="?signup" class="btn btn-success text-decoration-none">Create New Account</a>
      </div>
        <a href="?forgotpassword&newfp" class="text-decoration-none">Forgot password ?</a>
    </form>
  </div>
</div>
