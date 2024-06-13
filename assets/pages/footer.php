<?php if(isset($_SESSION['Auth'])){ ?>
<!-----------------Add a Post-------------------------->
<div class="modal fade" id="addpost" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="theme-dark theme-text-light modal-content">
      <div class="modal-header">
         <h6 class="modal-title">Add New Post</h6>
         <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
         <img src="" style="display:none" id="post_img" class="w-100 rounded border" />
         <form method="post" action="assets/php/actions.php?addpost" enctype="multipart/form-data">
            <div class="my-3">
               <input class="form-control" name="post_img" type="file" id="select_post_img">
            </div>
            <div class=" mb-3">
                <label for="exampleFormControlTextarea1" class="form-label">Say Something</label>
                <textarea name="post_text" class="form-control text-white " id="exampleFormControlTextarea1" rows="1"></textarea>
            </div>
                <button type="submit" class="btn btn-primary">Post</button>
         </form>
      </div>
    </div>
  </div>
</div>

<!------------------Notification----------------------->
<div class=" offcanvas offcanvas-start" tabindex="-1" id="notification_sidebar" aria-labelledby="offcanvasExampleLabel">
  <div class="theme-dark offcanvas-header">
     <h6 class="offcanvas-title" id="offcanvasExampleLabel">Notifications</h6>
     <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close">
     </button>
  </div>
  <div class="theme-light offcanvas-body"> 
    <?php
    $notifications = getNotifications();
    foreach($notifications as $not)
      {
        $time = $not['created_at'];
        $fuser = getUser($not['from_user_id']);
        $post='';
        if($not['post_id'])
        {
            $post='data-bs-toggle="modal" data-bs-target="#postview'.$not['post_id'].'"';
        }
        $fbtn='';
    ?>
    <div class="d-flex justify-content-between border-bottom">
      <div class="d-flex align-items-center p-2">
        <div>
            <img src="assets/images/profile/<?=$fuser['profile_pic']?>" alt="" height="40" width="40" class="rounded-circle border">
        </div>
        <div>&nbsp;&nbsp;</div>
        <div class="d-flex  flex-column justify-content-center" <?=$post?>>
             <a href='?u=<?=$fuser['username']?>' class="text-decoration-none">
                <h6 style="margin: 0px;font-size: small;"><?=$fuser['first_name']?> <?=$fuser['last_name']?></h6>
             </a>

             <h6 style="margin:0px;font-size:small" class="<?=$not['read_status']?'text-muted':''?>" >@<?=$fuser['username']?> <?=$not['message']?></h6>

             <time style="font-size:small" class="timeago <?=$not['read_status']?'text-muted':''?> text-small" datetime="<?=$time?>">
             </time>
         </div>
      </div>

      <div class="d-flex align-items-center">
        <?php
        if($not['read_status']==0){
        ?>

        <div class="p-1 bg-primary rounded-circle"></div>

        <?php
        }else if($not['read_status']==2){
        ?>
        <span class="badge bg-danger">Post Deleted</span>
        <?php
        }
        ?>
      </div>
    </div>
    <?php
    }
    ?>  
  </div>
</div>

<!----------------------Message------------------------>
<div class="theme-light offcanvas offcanvas-start" tabindex="-1" id="message_sidebar" aria-labelledby="offcanvasExampleLabel">
  <div class="theme-dark offcanvas-header">
    <h6 class="theme-text-light offcanvas-title" id="offcanvasExampleLabel">Messages</h6>
    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close">
    </button>
  </div>
  <div class="offcanvas-body" id="chatlist">
      
  </div>
</div>

<!---------------------------Chatting---------------------------------->
<div class="modal fade" id="chatbox" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
    <div class="theme-text-light theme-dark modal-content">
      <div class="modal-header">
        <a href="bg-info " id="cplink" class="text-decoration-none text-dark">
          <h6 class="theme-text-light modal-title" id="exampleModalLabel">
            <img src="assets/images/profile/default_profile.jpg" id="chatter_pic" height="40" width="40" class="m-1 rounded-circle border">
            <span id="chatter_name"></span>   [@<span id="chatter_username">loading..</span>]
          </h6></a>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>

      <div class="theme-light modal-body d-flex flex-column-reverse gap-2" id="user_chat">
        loading..
      </div>

      <div class=" modal-footer">
        <p class="p-2 text-danger mx-auto" id="blerror" style="display:none">
        <i class="bi bi-x-octagon-fill"></i> you are not allowed to send msg to this user anymore
      </div>
        <!----------------------Type Message-------------------------->
      <div class="input-group p-1" id="msgsender">
          <input type="text" class="form-control rounded-0 border-0" id="msginput" placeholder="say something.."aria-label="Recipient's username" aria-describedby="button-addon2" />
          <button class="btn btn-outline-primary rounded-0 border-0" id="sendmsg" data-user-id="0" type="button">Send</button>
      </div>
    </div>
  </div>
</div>

<?php } ?>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/jquery-3.6.0.min.js"></script>
    <script src="assets/js/jquery.timeago.js"></script>
    <script src="assets/js/custom.js?v=<?=time()?>"></script>
    <script src="assets/js/script.js"></script>
    <script src="assets/js/dark_mode.js"></script>

</body>

</html>
