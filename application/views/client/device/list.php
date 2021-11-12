

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
            
            <li class="nav-item">
              <a class="nav-link" href="<?=base_url("index.php/dashboard")?>">
                <span class="menu-title">Dashboard</span>
                <i class="mdi mdi-home menu-icon"></i>
              </a>
            </li>
            <li class="nav-item ">
              <a class="nav-link" href="<?=base_url("index.php/billings")?>">
                <span class="menu-title">Billing</span>
                <i class="mdi mdi-currency-usd menu-icon"></i>
              </a>
            </li>
            <li class="nav-item active">
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
            
            <div class="page-header">
              <h3 class="page-title">
                </span> Device
              </h3>
              <nav aria-label="breadcrumb">
                <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Device</a></li>
                  <li class="breadcrumb-item active" aria-current="page">List</li>
                </ul>
              </nav>
            </div>
            <a href="<?=base_url('/index.php/device/add')?>" class="btn btn-sm btn-primary" style="margin-top:-35px;margin-right:-4px" >Add </a>
          
            <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                   <div class="table-responsive">
                     
                    <table class="table table-hover">
                      <thead>
                        <tr>
                          <th>Number</th>
                          <th>Name</th>
                          <th>Multidevice</th>
                          <th>Instance Key</th>
                          <th>Data</th>
                          <th>Status</th>
                          <th>Reg. Date</th>
                        </tr>
                      </thead>
                      <tbody>
                          <?php 

                        $page = @$_GET['page'];
                        $page2 = (int)$page + 1;
                          $limit = 10;
                          if(!@$page){
                              $start = 0;
                          }else{
                              $start = $page * $limit;
                              
                          }
                          
                          if(($start+$limit) >= $devices_count){
                              $buttonNext = '<a href="#" class="btn btn-sm">Finis</a>';
                          }else{
                              $buttonNext = '<a href="?page='.$page2.'" class="btn btn-sm">Next</a>';
                          }
  
                          $i = $start ;
                        
                          foreach ($devices as $value) {
                             
                              $i += 1;
                              $status = $value->status;
                              $status_show = "";
                              $btn_scan = "";
                            
                              if($status === "1"){
                                $status_show = '<label class="badge badge-warning">UnPaired</label>';
                                $btn_scan = '<a class="btn btn-primary btn-sm" href="./device/authqr/'.$value->id.'"><i class="mdi mdi-qrcode-scan icon"></i></a>';
                              }else if($status === "2"){
                                $status_show = '<label class="badge badge-info">Paired</label>';
                                $btn_scan = '<a class="btn btn-danger btn-sm" href="./device/logout/'.$value->id.'">Logout</a>';
                              }else{
                                $status_show = '<label class="badge badge-danger">InActive</label>';
                              }
                              $muldev = $value->multidevice;
                              if($muldev == '1'){
                                $check_md = '<input type="checkbox" checked onclick="handleClick(`'.base_url('index.php/api/updateMultidevice').'`,`'.$value->api_key.'`,`0`)" id="'.$value->api_key.'" name="'.$value->api_key.'" value="'.$value->api_key.'">';
                             
                              }else if($muldev == '0'){
                                $check_md = '<input type="checkbox" onclick="handleClick(`'.base_url('index.php/api/updateMultidevice').'`,`'.$value->api_key.'`,`1`)" id="'.$value->api_key.'" name="'.$value->api_key.'" value="'.$value->api_key.'">';
                              }
                              echo '<tr>
                          <td>'.$i.'</td>
                          <td>'.$value->device_name.'</td>
                          <td>'. $check_md.'</td>
                          <td>'.$value->api_key.'</td>
                          <td class="text-danger"> '.$value->data.'</td>
                          <td>'.$status_show.'</td>
                          <td>'.$value->reg_date.'</td>
                          <td>'. $btn_scan.'</td>
                        </tr>';
                          } ?>
                      
                       
                      </tbody>
                    </table>
                    
                   </div>
                   <?=$buttonNext?>
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