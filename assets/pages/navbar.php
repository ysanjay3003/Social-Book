<?php
global $user;
?>
<nav class="card navbar navbar-expand-lg sticky-top">
    <div class="container col-lg-9 col-sm-10 col-md-1 d-flex flex-lg-row flex-md-row flex-sm-column justify-content-between">
        <div class="d-flex justify-content-between col-lg-8 col-sm-12">
            <a class="navbar-brand " href="?">
                <img src="assets/images/sb-logo.png" alt="" height="30" />
            </a>

            <form class="d-flex" id="searchform">
                <input class="form-control rounded-pill theme-text-light" type="search" id="search" placeholder="looking for someone.." aria-label="Search" autocomplete="off" />
                <div class="card theme-dark text-end rounded border shadow py-3 px-4 mt-1" style="display:none;position:absolute;z-index:+99;" id="search_result" data-bs-auto-close="true">
                    <button type="button" class="btn-close" aria-label="Close" id="close_search"></button>
                    <div id="sra" class="text-start">
                        <h6 class="text-center text-theme-light ">enter name or username</h6>
                    </div>
                </div>
            </form>
        </div>

        <div class="navbar-nav flex-fill flex-row justify-content-evenly mb-lg-0 mb-sm-1">
            <div class="nav-item">
                <a class="nav-link" href="?">
                    <i class="fa-solid fa-house"></i>
                </a>
            </div>
            <li class="nav-item">

                <a class="nav-link" data-bs-toggle="modal" data-bs-target="#addpost" href="#">
                    <i class="bi bi-plus-square-fill"></i>
                </a>
            </li>
            <li class="nav-item">
                <?php
                if(getUnreadNotificationsCount()>0){
                ?>
                <a class="nav-link position-relative" id="show_not" data-bs-toggle="offcanvas" href="#notification_sidebar" role="button" aria-controls="offcanvasExample">
                    <i class="bi bi-bell-fill"></i>
                    <span class="un-count position-absolute start-10 translate-middle badge p-1 rounded-pill bg-danger">
                        <small>
                            <?=getUnreadNotificationsCount()?>
                        </small>
                    </span>
                </a>

                <?php
                }else{
                ?>
                <a class="nav-link " data-bs-toggle="offcanvas" href="#notification_sidebar" role="button" aria-controls="offcanvasExample">
                    <i class="fa-solid fa-bell"></i>
                </a>
                <?php
                }
                ?>


            </li>
            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="offcanvas" href="#message_sidebar">
                    <i class="bi bi-chat-right-dots-fill"></i><span class="un-count position-absolute start-10 translate-middle badge p-1 rounded-pill bg-danger" id="msgcounter"></span>
                </a>
            </li>
            <li class="nav-item dropdown dropstart">
                <a class="nav-link" href="#" id="navbarDropdown" role="button"
                    data-bs-toggle="dropdown" aria-expanded="false">
                    <img src="assets/images/profile/<?=$user['profile_pic']?>" height="30" width="30" class="rounded-circle border" />
                </a>
                <ul class="dropdown-menu position-absolute top-100 end-50" aria-labelledby="navbarDropdown">
                    <li>
                        <a class="dropdown-item" href="?u=<?=$user['username']?>">
                            <i class="bi bi-person me-2"></i> My Profile
                        </a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="?editprofile">
                            <i class="bi bi-pencil-square me-2"></i> Edit Profile
                        </a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="?settings">
                            <i class="bi bi-gear me-3"></i>Settings
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider" style="height:2.5px;" />
                    </li>
                    <li>
                        <a class="dropdown-item" href="assets/php/actions.php?logout">
                            <i class="bi bi-box-arrow-in-left"></i> Logout
                        </a>
                    </li>
                </ul>
            </li>
           
        </div>
        <div class="">
            <h6>Dark Mode</h6>
            <label for="darkmodetoggle">
                <input type="checkbox" id="darkmodetoggle" />
                <span class="slide"></span>
            </label>
        </div>
    </div>
</nav>