<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>WhatsApp Panel | by Whatsva</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="<?=base_url("assets/purple/assets/vendors/mdi/css/materialdesignicons.min.css")?>">
    <link rel="stylesheet" href="<?=base_url("assets/purple/assets/vendors/css/vendor.bundle.base.css")?>">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="<?=base_url("assets/purple/assets/css/style.css")?>">
    <!-- End layout styles -->
    <link rel="shortcut icon"  href="<?= base_url("assets/purple/assets/images/favicon.png")?>" />
  </head>
  <body>
    <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth">
          <div class="row flex-grow">
            <div class="col-lg-4 mx-auto">
              <div class="auth-form-light text-center p-5">
                <div class="brand-logo">
                    WhatsApp Panel
                </div>
               
                <h6 class="font-weight-light">Sign in to continue.</h6>
                <?php if($this->session->flashdata('message_register_success')): ?>
			<div class="alert alert-success">
					<?= $this->session->flashdata('message_register_success') ?>
			</div>
		<?php endif ?>
                
                <?php if($this->session->flashdata('message_login_error')): ?>
			<div class="alert alert-warning">
					<?= $this->session->flashdata('message_login_error') ?>
			</div>
		<?php endif ?>
                <form class="pt-3" action="" method="post">
                  <div class="form-group">
                    <input type="email" name="username" value="" class="form-control form-control-lg" id="exampleInputEmail1" placeholder="Username" required>
                    <div class="invalid-feedback">
					<?= form_error('username') ?>
				</div>
                  </div>
                  <div class="form-group">
                    <input type="password" name="password" value="" class="form-control form-control-lg" id="exampleInputPassword1" placeholder="Password" required>
                    <div class="invalid-feedback"> 
					<?= form_error('password') ?>
				</div>
                  </div>
                  <div class="mt-3">
                    <input type="submit" class="btn btn-block btn-gradient-primary btn-lg font-weight-medium auth-form-btn" href="#" value="SIGN IN"></input>
                  </div>
                  <div class="my-2 d-flex justify-content-between align-items-center">
                    <div class="form-check">
                      <label class="form-check-label text-muted">
                        <input type="checkbox" class="form-check-input"> Keep me signed in </label>
                    </div>
                    <a href="#" class="auth-link text-black">Forgot password?</a>
                  </div>

                  <div class="text-center mt-4 font-weight-light"> Don't have an account? <a href="<?=base_url('index.php/register')?>" class="text-primary">Create</a>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="<?=base_url("assets/purple/assets/vendors/js/vendor.bundle.base.js")?>"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="<?=base_url("assets/purple/assets/js/off-canvas.js")?>"></script>
    <script src="<?=base_url("assets/purple/assets/js/hoverable-collapse.js")?>"></script>
    <script src="<?=base_url("assets/purple/assets/js/misc.js")?>"></script>
    <script src="<?=base_url("assets/purple/assets/js/jquery.min.js")?>"></script>
   
    <!-- endinject -->
  </body>
</html>