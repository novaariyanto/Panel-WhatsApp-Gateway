



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
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <div class="preview-icon bg-success">
                    <i class="mdi mdi-calendar"></i>
                  </div>
                </div>
                <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                  <h6 class="preview-subject font-weight-normal mb-1">Event today</h6>
                  <p class="text-gray ellipsis mb-0"> Just a reminder that you have an event today </p>
                </div>
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <div class="preview-icon bg-warning">
                    <i class="mdi mdi-settings"></i>
                  </div>
                </div>
                <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                  <h6 class="preview-subject font-weight-normal mb-1">Settings</h6>
                  <p class="text-gray ellipsis mb-0"> Update dashboard </p>
                </div>
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <div class="preview-icon bg-info">
                    <i class="mdi mdi-link-variant"></i>
                  </div>
                </div>
                <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                  <h6 class="preview-subject font-weight-normal mb-1">Launch Admin</h6>
                  <p class="text-gray ellipsis mb-0"> New admin wow! </p>
                </div>
              </a>
              <div class="dropdown-divider"></div>
              <h6 class="p-3 mb-0 text-center">See all notifications</h6>
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
              <a class="dropdown-item" href="#">
                <i class="mdi mdi-cached mr-2 text-success"></i> Activity Log </a>
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
          
          <li class="nav-item">
            <a class="nav-link" href="<?=base_url("index.php/admin")?>">
              <span class="menu-title">Dashboard</span>
              <i class="mdi mdi-home menu-icon"></i>
            </a>
          </li>
       
          <li class="nav-item active">
            <a class="nav-link" href="<?=base_url("index.php/device")?>">
              <span class="menu-title">Device</span>
              <i class="mdi mdi-cellphone-iphone menu-icon"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span class="menu-title">Message</span>
              <i class="mdi mdi-message-text menu-icon"></i>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="<?=base_url("index.php/setting")?>">
              <span class="menu-title">Settings</span>
              <i class="mdi mdi-settings menu-icon"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span class="menu-title">Documentation</span>
              <i class="mdi mdi-file-document-box menu-icon"></i>
            </a>
          </li>
         
         
        </ul>
      </nav>
      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
          
          <div class="page-header">
            <h3 class="page-title">
              </span> Device Pairing
            </h3>
            <nav aria-label="breadcrumb">
              <ul class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">Device</a></li>
                <li class="breadcrumb-item active" aria-current="page">Pairing</li>
              </ul>
            </nav>
          </div>
          <div class="row">
          <div class="col-md-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-sm-6">
                            <h5 class="mb-5">To use <?=$setting->app_name;?> you needs:</h5>
                            <p>1. Open WhatsApp on Your Phone</p>
                            <p>2. Tap menu or Setting and select Link Device</p>
                            <p>3. If you haven't joined the multi-device beta yet, you can join first, Link Tutorial <a href="https://faq.whatsapp.com/web/download-and-installation/how-to-join-or-leave-the-multi-device-beta/?lang=id">Click</a></p>
                            <p>4. Point your phone to this screen to capture the code</p>
                        </div>
                        <div class="col-sm-6 text-center">
                          <input type="hidden" value="<?=$device->id?>" id="id_device">
                        <div id="qrcode" style="margin:10px;height:200px"></div>
                        <br>
                                <p> This page will refresh in <span id="countdowntimer">15</span> Seconds</p>

                        </div>
                    </div>
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

        </footer>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>