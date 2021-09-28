

    <div class="container-scroller">
      <!-- partial:partials/_navbar.html -->
      <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
          <a class="navbar-brand brand-logo" href="#"><?=$setting->app_name;?></a>
          <a class="navbar-brand brand-logo-mini" href="#">WP</a>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-stretch">
          <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
            <span class="mdi mdi-menu"></span>
          </button>
          <div class="search-field d-none d-md-block">
            <form class="d-flex align-items-center h-100" action="#">
              <div class="input-group">
                <div class="input-group-prepend bg-transparent">
                  <i class="input-group-text border-0 mdi mdi-magnify"></i>
                </div>
                <input type="text" class="form-control bg-transparent border-0" placeholder="Search projects">
              </div>
            </form>
          </div>
          <ul class="navbar-nav navbar-nav-right">
           
            <li class="nav-item d-none d-lg-block full-screen-link">
              <a class="nav-link">
                <i class="mdi mdi-fullscreen" id="fullscreen-button"></i>
              </a>
            </li>
           
            <li class="nav-item dropdown">
              <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#" data-toggle="dropdown">
                <i class="mdi mdi-bell-outline"></i>
              
              </a>
              <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
                <h6 class="p-3 mb-0">Notifications</h6>
               
               
              </div>
            </li>
            <li class="nav-item nav-profile dropdown">
              <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                <div class="nav-profile-img">
                  <img src="<?=  base_url("assets/purple/assets/images/faces/face1.jpg")?>" alt="image">
                  <span class="availability-status online"></span>
                </div>
                <div class="nav-profile-text">
                  <p class="mb-1 text-black"><?=$current_user->username?></p>
                </div>
              </a>
              <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
             
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="<?=base_url("index.php/auth/logout")?>">
                  <i class="mdi mdi-logout mr-2 text-primary"></i> Signout </a>
              </div>
            </li>
          </ul>
          <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
            <span class="mdi mdi-menu"></span>
          </button>
        </div>
      </nav>
         <!-- partial -->
   <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
            
            <li class="nav-item active">
              <a class="nav-link" href="<?=base_url("index.php/dashboard")?>">
                <span class="menu-title">Dashboard</span>
                <i class="mdi mdi-home menu-icon"></i>
              </a>
            </li>
         
            <li class="nav-item">
              <a class="nav-link" href="<?=base_url("index.php/device")?>">
                <span class="menu-title">Device</span>
                <i class="mdi mdi-cellphone-iphone menu-icon"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<?=base_url('index.php/messageOut')?>">
                <span class="menu-title">Message Out</span>
                <i class="mdi mdi-file-document-box menu-icon"></i>
              </a>
            </li>
 <li class="nav-item">
              <a class="nav-link" href="<?=base_url('index.php/messageIn')?>">
                <span class="menu-title">Message In</span>
                <i class="mdi mdi-inbox menu-icon"></i>
              </a>
            </li>
      <li class="nav-item">
              <a class="nav-link" href="<?=base_url('index.php/webhook')?>">
                <span class="menu-title">Webhook</span>
                <i class="mdi mdi-access-point menu-icon"></i>
                </a>
            </li>
  <li class="nav-item">
              <a class="nav-link" href="<?=base_url('index.php/autoreply')?>">
                <span class="menu-title">Autoreply</span>
                <i class="mdi mdi-reply  menu-icon"></i>
              </a>
            </li>
         
            <li class="nav-item">
              <a class="nav-link" href="https://documenter.getpostman.com/view/6198796/U16opPKp" target="_blank">
                <span class="menu-title">Documentation</span>
                <i class="mdi mdi-file-document-box menu-icon"></i>
              </a>
            </li>
           
           
          </ul>
        </nav>
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
            <div class="row" id="proBanner">
   
            </div>
            <div class="page-header">
              <h3 class="page-title">
                <span class="page-title-icon bg-gradient-primary text-white mr-2">
                  <i class="mdi mdi-home"></i>
                </span> Dashboard
              </h3>
              <nav aria-label="breadcrumb">
                <ul class="breadcrumb">
                  <li class="breadcrumb-item active" aria-current="page">
                    <span></span>Overview <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
                  </li>
                </ul>
              </nav>
            </div>
            <div class="row">
              <div class="col-md-4 stretch-card grid-margin">
                <div class="card bg-gradient-danger card-img-holder text-white">
                  <div class="card-body">
                    <img  src="<?= base_url("assets/purple/assets/images/dashboard/circle.svg")?>"  class="card-img-absolute" alt="circle-image" />
                    <h4 class="font-weight-normal mb-3">Device <i class="mdi mdi-chart-line mdi-24px float-right"></i>
                    </h4>
                    <h2 class="mb-5"><?=sizeof($devices)?></h2>
                    <h6 class="card-text">Create your device</h6>
                  </div>
                </div>
              </div>
              <div class="col-md-4 stretch-card grid-margin">
                <div class="card bg-gradient-info card-img-holder text-white">
                  <div class="card-body">
                    <img  src="<?= base_url("assets/purple/assets/images/dashboard/circle.svg")?>"  class="card-img-absolute" alt="circle-image" />
                    <h4 class="font-weight-normal mb-3">Message Out <i class="mdi mdi-bookmark-outline mdi-24px float-right"></i>
                    </h4>
                    <h2 class="mb-5"><?=$messages_count?></h2>
                    <h6 class="card-text">Send all messages </h6>
                  </div>
                </div>
              </div>
              <div class="col-md-4 stretch-card grid-margin">
                <div class="card bg-gradient-success card-img-holder text-white">
                  <div class="card-body">
                    <img  src="<?= base_url("assets/purple/assets/images/dashboard/circle.svg")?>"  class="card-img-absolute" alt="circle-image" />
                    <h4 class="font-weight-normal mb-3">Message In <i class="mdi mdi-diamond mdi-24px float-right"></i>
                    </h4>
                    <h2 class="mb-5">0</h2>
                    <h6 class="card-text">Make everything easier</h6>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-7 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <div class="clearfix">
                      <h4 class="card-title float-left">Visit And Sales Statistics</h4>
                      <div id="visit-sale-chart-legend" class="rounded-legend legend-horizontal legend-top-right float-right"></div>
                    </div>
                    <canvas id="visit-sale-chart" class="mt-4"></canvas>
                  </div>
                </div>
              </div>
              <div class="col-md-5 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Traffic Sources</h4>
                    <canvas id="traffic-chart"></canvas>
                    <div id="traffic-chart-legend" class="rounded-legend legend-vertical legend-bottom-left pt-4"></div>
                  </div>
                </div>
              </div>
            </div>
           
        
           
          </div>
          <!-- content-wrapper ends -->
          <!-- partial:partials/_footer.html -->
          <footer class="footer">
            <div class="container-fluid clearfix">
              <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © kejarkoding.com 2021</span>
              <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center"> Thanks to <a href="#" target="_blank">Allah Ta'ala </a> for Everiting</span>
            </div>
          </footer>
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>