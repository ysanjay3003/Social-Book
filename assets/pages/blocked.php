<?php
global $user;
?>

<body>
  <div class="login">
    <div class="d-flex justify-content-center">
      <img class="mb-3" src="assets/images/sb-logo.png" alt="" height="75">
    </div>
    <div class="col-md-4 col-sm-12 bg-white border rounded p-4 shadow-sm">
      <form>
        <h1 class="h5 mb-3 fw-normal">Hello, <?=$user['first_name'].' '.$user['last_name'].' ('.$user['email'].') '?>
          <br />
          Your Account Is Blocked By Admin
        </h1>

        <div class="mt-3 d-flex justify-content-between align-items-center">
          <a href="assets/php/actions.php?logout" class="btn btn-danger" type="submit">Logout</a>
        </div>
      </form>
    </div>
  </div>
