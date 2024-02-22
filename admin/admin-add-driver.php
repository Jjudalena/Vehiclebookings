<?php
  session_start();
  include('vendor/inc/config.php');
  include('vendor/inc/checklogin.php');
  check_login();
  $aid=$_SESSION['a_id'];
  //Add USer
  if(isset($_POST['add_driver']))
    {

  // Retrieve POST data
$d_fname = $_POST['d_fname'];
$d_lname = $_POST['d_lname'];
$d_number = $_POST['d_number'];
$d_address = $_POST['d_address'];
$d_lice = $_POST['d_lice'];
$d_exp = $_POST['d_exp'];



// Prepare the SQL query
$query = "INSERT INTO tms_driver ( d_fname, d_lname, d_number, d_address, d_lice, d_exp) VALUES ( ?, ?, ?, ?, ?, ?)";
$stmt = $mysqli->prepare($query);

// Bind parameters
$rc = $stmt->bind_param('ssisis', $d_fname, $d_lname, $d_number, $d_address, $d_lice, $d_exp);

// Execute the prepared statement
$stmt->execute();
                if($stmt)
                {
                    $succ = "Driver Added";
                }
                else 
                {
                    $err = "Please Try Again Later";
                }
            }
?>
<!DOCTYPE html>
<html lang="en">

<?php include('vendor/inc/head.php');?>

<body id="page-top">
 <!--Start Navigation Bar-->
  <?php include("vendor/inc/nav.php");?>
  <!--Navigation Bar-->

  <div id="wrapper">

    <!-- Sidebar -->
    <?php include("vendor/inc/sidebar.php");?>
    <!--End Sidebar-->
    <div id="content-wrapper">

      <div class="container-fluid">
      <?php if(isset($succ)) {?>
                        <!--This code for injecting an alert-->
        <script>
                    setTimeout(function () 
                    { 
                        swal("Success!","<?php echo $succ;?>!","success");
                    },
                        100);
        </script>

        <?php } ?>
        <?php if(isset($err)) {?>
        <!--This code for injecting an alert-->
        <script>
                    setTimeout(function () 
                    { 
                        swal("Failed!","<?php echo $err;?>!","Failed");
                    },
                        100);
        </script>

        <?php } ?>

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="#">Drivers</a>
          </li>
          <li class="breadcrumb-item active">Add Driver</li>
        </ol>
        <hr>
        <div class="card">
        <div class="card-header">
          Add Driver
        </div>
        <div class="card-body">
          <!--Add User Form-->
          <form method ="POST"> 
            <div class="form-group">
                <label for="exampleInputEmail1">First Name</label>
                <input type="text" required class="form-control" id="exampleInputEmail1" name="d_fname">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Last Name</label>
                <input type="text" class="form-control" id="exampleInputEmail1" name="d_lname">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Contact</label>
                <input type="text" class="form-control" id="exampleInputEmail1" name="d_number">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Address</label>
                <input type="text" class="form-control" id="exampleInputEmail1" name="d_address">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">License Number</label>
                <input type="text" class="form-control" id="exampleInputEmail1" name="d_lice">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Driver Experience</label>
                <input type="text" class="form-control" id="exampleInputEmail1" name="d_exp">
            </div>

        
            <button type="submit" name="add_driver" class="btn btn-success">Add Driver</button>
          </form>
          <!-- End Form-->
        </div>
      </div>
       
      <hr>
     

    </div>
    <!-- /.content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-danger" href="admin-logout.php">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Page level plugin JavaScript-->
  <script src="vendor/chart.js/Chart.min.js"></script>
  <script src="vendor/datatables/jquery.dataTables.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="vendor/js/sb-admin.min.js"></script>

  <!-- Demo scripts for this page-->
  <script src="vendor/js/demo/datatables-demo.js"></script>
  <script src="vendor/js/demo/chart-area-demo.js"></script>
 <!--INject Sweet alert js-->
 <script src="vendor/js/swal.js"></script>

</body>

</html>
