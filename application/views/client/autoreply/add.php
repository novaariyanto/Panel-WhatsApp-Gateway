

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
                  <img src="<?=base_url("assets/purple/assets/images/faces/face1.jpg")?>" alt="image">
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

            <li class="nav-item">
              <a class="nav-link" href="<?=base_url("index.php/dashboard")?>">
                <span class="menu-title">Dashboard</span>
                <i class="mdi mdi-home menu-icon"></i>
              </a>
            </li>

            <li class="nav-item ">
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
   <li class="nav-item ">
              <a class="nav-link" href="<?=base_url('index.php/webhook')?>">
                <span class="menu-title">Webhook</span>
                <i class="mdi mdi-access-point menu-icon"></i>
              </a>
            </li>
            <li class="nav-item active">
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

            <div class="page-header">
              <h3 class="page-title">
                </span> Autoreply
              </h3>
              <nav aria-label="breadcrumb">
                <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Autoreply</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Add</li>
                </ul>
              </nav>
            </div>
            <div class="row">
            <div class="col-md-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                  <form class="forms-sample" method="post" action="">
                  <div class="form-group row">
                        <label for="exampleInputUsername2" class="col-sm-3 col-form-label">Device<br> <span style="color:red"> <?=form_error('device_name')?> <?php echo $this->session->flashdata('message_add_device_error'); ?></span></label>
                        <div class="col-sm-9">
                            <select name="instance_key" id="" class="form-control" required>
                                <option value="">Select Device</option>
                                <?php
foreach ($devices as $key => $value) {

    ?>
                                <option value="<?=$value->api_key?>"><?=$value->device_name?></option>
                                <?php }?>
                        </select>
                          <!-- <input type="text" class="form-control"  name="device_name" id="exampleInputUsername2" placeholder="ex : Device A" value=""> -->

                        </div>
                       </div>
                      <div class="form-group row">
                        <label for="exampleInputUsername2" class="col-sm-3 col-form-label">Receive<br> <span style="color:red"> <?=form_error('receive')?> <?php echo $this->session->flashdata('message_add_webhook_error'); ?></span></label>
                        <div class="col-sm-9">
                          <input type="text" class="form-control"  name="receive" id="exampleInputUsername2" placeholder="ex : !hello" value="">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="exampleInputUsername2" class="col-sm-3 col-form-label">Reply<br> <span style="color:red"> <?=form_error('reply')?> <?php echo $this->session->flashdata('message_add_webhook_error'); ?></span></label>
                        <div class="col-sm-9">
                          <textarea type="text" class="form-control"  name="reply" id="exampleInputUsername2" placeholder="ex : hello to" value=""></textarea>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="exampleInputUsername2" class="col-sm-3 col-form-label">Type<br> <span style="color:red"> <?=form_error('reply')?> <?php echo $this->session->flashdata('message_add_webhook_error'); ?></span></label>
                        <div class="col-sm-9">
                          <select name="type" id="" class="form-control">
                            <option value="1">Private Message</option>
                            <option value="2">All Message</option>
                          </select>
                         
                        </div>
                      </div>
                      <button type="submit" class="btn btn-gradient-primary mr-2">Save</button>
                    </form>

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