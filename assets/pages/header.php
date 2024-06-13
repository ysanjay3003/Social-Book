<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href=" https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.min.css " rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
    <link href="assets/bootstrap/css/bootstrap.css" rel="stylesheet"/>
    <link href="assets/css/custom.css" rel="stylesheet">
    <link rel="icon" href="assets/images/sb-icon.png">
    <title><?=$data['page_title']?></title>
   <style>

/* if dark-mode class is not added set this background */
   body 
   {
       background:#dddddd;
       transition: 0.5s;
   }

   #darkmodetoggle {
        width: 0;
        height: 0;
        opacity: 0;
   }

   nav  label {
        display: block;
        height: 15px;
        width: 60px;
        position: relative;
        margin: 0px auto;
   }

   span.slide {
        position: absolute;
        width: 100%;
        height: 100%;
        background: #dadada;
        border-radius: 30px;
   }

   span.slide:before {
        position: absolute;
        content: "";
        height: 20px;
        width: 20px;
        background: #fff;
        border-radius: 50%;
        top: -2px;
        left: 0px;
        transition: 0.5s;
        box-shadow: rgba(0, 0, 0, 0.21) 0px 0px 7px 1px;
    }

    #darkmodetoggle:checked + span.slide:before {
    transform: translatex(40px);
    }   
   /* if dark-mode class is added set this background */
   body.dark-mode {
        background: #353535;
   }

    
   body.dark-mode .btn
   
   {
        background: #333;
        color: white;
   }

   body.dark-mode p 
   {
        color:black !important;
   }
   body.dark-mode header,
   .dark-mode main,
   .dark-mode footer
   
   {
        background: #1b1b1b;
   }
   
   .dark-mode .form-control{
       background:#292929;
   }
   
   .dark-mode .form-floating span{
       color:#a7a7a7;
   }
   body.dark-mode .login{
       background:#343a40 ;
   }
   body.dark-mode .container1
   {
       background:#1b1b1b;
       color:white;
   }
   datalist .show_psd{
       color:black;

   }

   .dark-mode .dropdown-menu{
       background:#4a4a4a;
   }
   .dark-mode .form-floating,
   .dark-mode input[type=text],
   .dark-mode input[type=password],
   .dark-mode .dropdown-menu > li > hr,
   .dark-mode .text-decoration-none,
   .dark-mode .dropdown-menu a,
   .dark-mode .nav-item,
   .dark-mode a,
   .dark-mode .theme-text-light,
   .dark-mode  h6,
   .dark-mode  p,
   .dark-mode .offcanvas-header h6
   {
       color:white;
   }

   body.dark-mode .text-muted{
       color:white;
   }
   .dark-mode .dropdown-menu > li > a:hover,
   .dark-mode .theme-dark,
   .dark-mode .navbar
   {
    background-color: #1b1b1b;
   }
   .dark-mode .theme-light{
     background-color:#222222;
   }

    </style>
</head>
 
<body>
