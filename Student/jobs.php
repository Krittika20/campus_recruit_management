<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!-- <link rel="stylesheet" href="assets/css/jobs.css"> -->
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>JOBS</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <style>
        table {
            border-collapse:separate;
            width: 80%;
            margin-left: 270px;
            /* border-style: PHP_ROUND_HALF_DOWN; */
            padding: 10px;
        }
        th, td {
            text-align: center;
            padding: 10px;
            color:white;
        }
        th {
            background-color: red;
            color:whitesmoke;
        }
        /* tr:nth-child(odd){background-color: red;} */
    </style>
</head>
<body bgcolor="white">
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="dashboard.html">RECRUITMENTS</a> 
            </div>
  <div style="color: white; padding: 15px 50px 5px 50px; float: right; font-size: 16px;">&nbsp; <a href="../home_login_pages/index.php" class="btn btn-danger square-btn-adjust">Logout</a> </div>
<!-- <div style="color: white; padding: 15px 50px 5px 50px; float: right; font-size: 16px;"> &nbsp;  </div> -->
        </nav>   
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
                    <img src="assets/img/find_user.png" class="user-image img-responsive"/>
					</li>
                    <li>
                        <a  href="dashboard.html"><i class="fa fa-dashboard fa-3x"></i> DASHBOARD</a>
                    </li>
                      <li>
                        <a  href="profile.php"><i class="fa fa-desktop fa-3x"></i>PROFILE</a>
                    </li>
                    <li>
                        <a  class="active-menu" href="jobs.php"><i class="fa fa-qrcode fa-3x"></i>JOBS</a>
                    </li>
						  
                    <li  >
                        <a  href="experience.php" ><i class="fa fa-edit fa-3x"></i>INTERVIEW EXPERIENCE</a>
                    </li>
			<li>
                        <a href=""><i class=""></i></a>
                    </li>
                    <li>
                        <a href=""><i class=""></i></a>
                    </li>
                    <li>
                        <a href=""><i class=""></i></a>
                    </li>
                    <li>
                        <a href=""><i class=""></i></a>
                    </li>		 
                    <li>
                        <a href=""><i class=""></i></a>
                    </li>
                    <li>
                        <a href=""><i class=""></i></a>
                    </li>
                    <li>
                        <a href=""><i class=""></i></a>
                    </li>
                    <li>
                        <a href=""><i class=""></i></a>
                    </li>
                    <li>
                        <a href=""><i class=""></i></a>
                    </li>
                    <li>
                        <a href=""><i class=""></i></a>
                    </li>
                    <li>
                        <a href=""><i class=""></i></a>
                    </li>
                    <li>
                        <a href=""><i class=""></i></a>
                    </li>
                    <li>
                        <a href=""><i class=""></i></a>
                    </li>
                    <li>
                        <a href=""><i class=""></i></a>
                    </li>
                    <li>
                        <a href=""><i class=""></i></a>
                    </li>
                    <li>
                        <a href=""><i class=""></i></a>
                    </li>
                    <li>
                        <a href=""><i class=""></i></a>
                    </li>
                    <li>
                        <a href=""><i class=""></i></a>
                    </li>
                    <li>
                        <a href=""><i class=""></i></a>
                    </li>
                    <li>
                        <a href=""><i class=""></i></a>
                    </li>
                    <li>
                        <a href=""><i class=""></i></a>
                    </li>
                    <li>
                        <a href=""><i class=""></i></a>
                    </li>
                    <li>
                        <a href=""><i class=""></i></a>
                    </li>
                  
                    </ul>
                    </div>
                    </nav>
                    <table>
                        <tr>
                            <th>COMPANY NAME</th>
                            <th>VENUE</th>
                            <th>JOB TYPE</th>
                            <th>SALARY</th>
                            <th>APPLY</th>
                        </tr>
                        <?php
                           $conn=mysqli_connect("localhost","root","","ospforms");
                           if($conn-> connect_error){
                               die("Connection Failed:".$conn-> connect_error);
                           }                    
                           $sql="SELECT companyname,venue,jobtype,salary from postjobs";
                           $result=$conn-> query($sql);
                           if($result-> num_rows > 0){
                               while($row=$result-> fetch_assoc()){
                                   echo "<tr><td>".$row["companyname"]."</td><td>".$row["venue"]."</td><td>".$row["jobtype"]."</td><td>".$row["salary"]."</td><td> <button class='btn' id='mybtn' name='btn' onclick=myselect()>APPLY</button></td></tr>";

                                //    echo "<tr><td>". $row["companyname"]."</td><td>".$row["venue"]."</td><td>".$row["jobtype"]."</td><td> <button class='btn' id='mybtn' background-color: #4CAF50 onclick=myselect()>APPLY</button> </td></tr>";
                               }
                               echo "</table>";
                           }
                           else{
                               echo "0 result";
                           }
                           $conn-> close();
                        ?>
                    </table>
    
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    <script>
        function myselect(){
    $.ajax({
    type: "POST",
    data:{},       
    success:function( data ) {
       $(".btn").html("Accepted");   // Add this line
    }
});
 }
</script>
    <!-- <script type="text/javascript"> 
        function myselect(){
            // var submit = document.getElementById(btn);
            // submit.value = 'APPLIED';
            // console.log('APPLIED');
            $buttonname="APPLIED";
            return false;
        };
    </script> -->
   
</body>
</html>
