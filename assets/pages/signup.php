
<div class="login">
    <img src="images/sb_logo.png " height="80" />
    <div class="card col-lg-3 col-sm-12 col-md-4 border rounded p-3 container1">
        <div class="title my-3 d-flex align-items-center justify-content-center">
            <b>Signup to Socialbook</b>
        </div>
        <form method="post" action="assets/php/actions.php?signup">
            <div class="d-flex">
                <div class="form-floating mt-1 col-6 ">
                    <input type="text" name="first_name" value="<?=showFormData('first_name')?>" class="form-control rounded-0" placeholder="username/email" />
                    <label for="floatingInput">first name</label>
                </div>
                <div class="form-floating mt-1 col-6">
                    <input type="text" name="last_name" value="<?=showFormData('last_name')?>" class="form-control rounded-0" placeholder="username/email" />
                    <label for="floatingInput">last name</label>
                </div>
            </div>
            <?=showError('first_name')?>
            <?=showError('last_name')?>

            <div class="d-flex gap-3 my-3">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="gender" id="exampleRadios1"
                        value="1" <?=isset($_SESSION['formdata'])?'':'checked'?> <?=showFormData('gender')==1?'checked':''?> />
                    <label class="form-check-label" for="exampleRadios1">
                        Male
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="gender" id="exampleRadios3"
                        value="2" <?=showFormData('gender')==2?'checked':''?> />
                    <label class="form-check-label" for="exampleRadios3">
                        Female
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="gender" id="exampleRadios2"
                        value="0" <?=showFormData('gender')==0?'checked':''?> />
                    <label class="form-check-label" for="exampleRadios2">
                        Other
                    </label>
                </div>
            </div>
            <div class="form-floating mt-1">
                <input type="email" name="email" value="<?=showFormData('email')?>" class="form-control rounded-0" placeholder="username/email" />
                <label for="floatingInput">email</label>
            </div>
            <?=showError('email')?>

            <div class="form-floating mt-1">
                <input type="text" name="username" value="<?=showFormData('username')?>" class="form-control rounded-0" placeholder="username/email" />
                <label for="floatingInput">username</label>
            </div>
            <?=showError('username')?>

            <div class="form-floating mt-2 d-flex align-items-center smaller-input">
                <input type="password" name="password" class="form-control" id="password" placeholder="Password" />
                <label>password</label>
                <span class="show_psd" onclick="password_show_hide();">
                    <i class="fas fa-eye" id="show_eye"></i>
                    <i class="fas fa-eye-slash d-none" id="hide_eye"></i>
                </span>
            </div>
            <?=showError('password')?>

            <div class="mt-3 d-flex justify-content-between align-items-center">
                <button class="btn btn-primary" type="submit">Sign Up</button>
                <a href="?login" class="btn btn-success text-decoration-none">Already have an account ?</a>
            </div>

        </form>
    </div>
</div>

