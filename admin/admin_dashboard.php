<?php
session_start();

$conn=mysqli_connect("localhost","puneetha","Puneetha@25","ospforms");
if(mysqli_connect_error()){
   die('Could not Connect My Sql:');
}
  $sql = "SELECT count(CID) AS total FROM cusers  ";
  $result = mysqli_query($conn,$sql);
  $values= mysqli_fetch_assoc($result);
  $num_rows = $values['total'];

  $sql1 = "SELECT count(ID) AS total1 FROM users  ";
  $result1 = mysqli_query($conn,$sql1);
  $values1= mysqli_fetch_assoc($result1);
  $num_rows1 = $values1['total1'];

?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin-Dasboard</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="css/metisMenu.min.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="css/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/startmin.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="css/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<div id="wrapper">

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">RECRUITMENT</a>
        </div>

        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>

        <!-- Top Navigation: Left Menu -->
        <ul class="nav navbar-nav navbar-left navbar-top-links">
            <li><a href="#"><i class="fa fa-home fa-fw"></i>Admin Website</a></li>
        </ul>

        <!-- Top Navigation: Right Menu -->
        <ul class="nav navbar-right navbar-top-links">
            <li class="dropdown navbar-inverse">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-bell fa-fw"></i> <b class="caret"></b>
                </a>
                <ul class="dropdown-menu dropdown-alerts">
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-comment fa-fw"></i> New Comment
                                <span class="pull-right text-muted small">4 minutes ago</span>
                            </div>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-user fa-fw"></i>Setting<b class="caret"></b>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="../home_login_pages/index.php"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                    </li>
                </ul>
            </li>
        </ul>

        <!-- Sidebar -->
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">

                <ul class="nav" id="side-menu">
                    <li class="sidebar-search">
                        <div class="input-group custom-search-form">
                            <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                    <button class="btn btn-primary" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                        </div>
                    </li>
                    <li>
                        <a href="admin_dashboard.php" class="active"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                    </li>
                    <li>
                        <a href="delete_student.php"><i class="fa fa-sitemap fa-fw"></i>Delete Student<span class="fa arrow"></span></a>
                    </li>
                    <li>
                        <a href="delete_company.php"><i class="fa fa-sitemap fa-fw"></i>Delete Company<span class="fa arrow"></span></a>
                    </li>
                    <li>
                        <a href="view_student_details.php"><i class="fa fa-sitemap fa-fw"></i>View Students<span class="fa arrow"></span></a>
                    </li>
                    <li>
                        <a href="view_company_details.php"><i class="fa fa-sitemap fa-fw"></i>View Company<span class="fa arrow"></span></a>
                    </li>
                    <!-- <li>
                        <a href="Profile.html"><i class="fa fa-sitemap fa-fw"></i>Profile<span class="fa arrow"></span></a>
                    </li>
                    <li>
                        <a href="postjobs.php"><i class="fa fa-sitemap fa-fw"></i>Post Jobs<span class="fa arrow"></span></a>
                    </li> -->
                </ul>

            </div>
        </div>
    </nav>

    <!-- Page Content -->
    <div id="page-wrapper">
        <div class="container-fluid">

            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Dashboard</h1>
                </div>
            </div>
            
            <div class = "row">
            
            <div class="col-lg-3 col-md-6">
            <div class="panel panel-primary">
            <div class="panel-heading">
            <div class="row">
              
            <div class="col-xs-3">
            <i class="fa fa-line-chart" style="font-size:48px;">
            </i>
            </div>
            <div class="col-xs-9 text-right">
            <div class="huge"><?php echo  $num_rows1;?></div>
            <div>Students Registered</div>
            </div>
            </div>
            </div>
            <a href="#">
            <div class="panel-footer">
            <span class="pull-left"><a href="view_student_details.php">View Details</a></span>
            <span class="pull-right">
            <i class="fa fa-arrow-circle-right">
            </i>
            </span>
            <div class="clearfix">
            
            </div>
            </div>
            </a>
            </div>
            </div>
            <div class="col-lg-3 col-md-6">
            <div class="panel panel-green">
            <div class="panel-heading">
            <div class="row">
              
            <div class="col-xs-3">
            <i class="fa fa-pie-chart" style="font-size:48px;">
            </i>
            </div>
            <div class="col-xs-9 text-right">
            <div class="huge"><?php echo  $num_rows;?></div>
            <div>Companies Registered</div>
            
            </div>
            </div>
            </div>
            <a href="#">
            <div class="panel-footer">
            <span class="pull-left"><a href="view_company_details.php">View Details</a></span>
            <span class="pull-right">
            <i class="fa fa-arrow-circle-right">
            </i>
            </span>
            <div class="clearfix">
            
            </div>
            </div>
            </a>
            </div>
            </div>
           
            </div> 
        
        </div>                       
    </div>

</div>

<!-- jQuery -->
<script src="js/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="js/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="js/startmin.js"></script>

</body>
</html>
