<?php
include_once '../config/connection.php';



if(isset($_POST['append'])){

	$full_name = $_POST['full_name'];
	$class = $_POST['class']!="Class"?$_POST['class']:"";
	$group = $_POST['group']!="Group"?$_POST['group']:"";
	$gender = $_POST['gender'];
	$tele = $_POST['tele'];
	$email = $_POST['email'];
	$facebook = $_POST['facebook'];
	$date_naissance = $_POST['date_naissance'];
	$business_adress = $_POST['business_adress'];
	$home_adress = $_POST['home_adress'];
	$remarque = $_POST['remarque'];

  $query = 'INSERT INTO `client`(`full_name`, `class`, `group`, `gender`, `tele`, `email`, `facebook`, `date_naissance`, `business_adress`, `home_adress`, `remarque`) 
  VALUES (?,?,?,?,?,?,?,?,?,?,?)';
    $query = $db->prepare($query);
    $query->execute([$full_name, $class, $group, $gender, $tele, $email, $facebook, $date_naissance, $business_adress, $home_adress, $remarque]);
    //$msg=" Votre Employe a bien été enregistré ! Merci d'avoir utilisé notre Application.";
   // header("location:emp_list.php?msg=".$msg."");
   echo "<script>window.location.href='client_list.php';</script>";
    exit;
}
?>


<?php 
include("./includes/header.php"); 
$sql = "SELECT * FROM `client` WHERE `id_client` like ".$_GET['id']."";
$result = $db->query($sql);
 while($row = $result->fetch(PDO::FETCH_ASSOC)) {
        echo '
        <section>
          <header class="main">
            <h1>Client details</h1>
          </header>
          <form method="post" action="client_add.php">
            <div class="row gtr-uniform">
                  <div class="col-3 col-12-xsmall">
                    <input type="text" name="full_name" value="'.$row["full_name"].'" placeholder="Full Name" required disabled />
                  </div>
                  <div class="col-3 col-12-xsmall">
                    <input type="text" name="class" id="demo-group" value="'.$row["class"].'" disabled />
                  </div>
                  <div class="col-3 col-12-xsmall">
                    <input type="text" name="group" id="demo-group" value="'.$row["group"].'" disabled />
                  </div>
                  <div class="col-3 col-12-xsmall">
                    <input type="text" name="gender" id="demo-group" value="'.$row["gender"].'" disabled />
                  </div>
                  <div class="col-3 col-12-xsmall">
                    <input type="text" name="tele" placeholder="Tele" value="'.$row["tele"].'" disabled/>
                  </div>
                  <div class="col-3 col-12-xsmall">
                    <input type="email" name="email" placeholder="Email" value="'.$row["email"].'" disabled/>
                  </div>
                  <div class="col-3 col-12-xsmall">
                    <input type="text" name="facebook" placeholder="Facebook" value="'.$row["facebook"].'" disabled/>
                  </div>
                  <div class="col-3 col-12-xsmall">
                    <input type="text" name="date_naissance" value="'.$row["date_naissance"].'" disabled/>
                  </div>

                  <div class="col-6 col-12-xsmall">
                    <input type="text" name="business_adress" placeholder="Business Address" value="'.$row["business_adress"].'" disabled/>
                  </div>
                  <div class="col-6 col-12-xsmall">
                    <input type="text" name="home_adress" placeholder="Home Address" value="'.$row["home_adress"].'" disabled/>
                  </div>
                
                  <div class="col-12 col-12-xsmall">
                    <textarea id="w3review" name="remarque" rows="4" cols="50" placeholder="Remarque" disabled>'.$row["remarque"].'</textarea>
                  </div>
              </div>
          </form>

         </section>';}
        
         ?>
          <ul class="actions">
            <li><a href="client_update.php?id=<?= $_GET['id'] ?>" type="submit" name="update" value="Update" class="button primary">Update</a></li>
            <li><a href="client_delete.php?id=<?= $_GET['id']?>" type="reset" onclick="return myConfirm();" name="delete" value="delete" class="button">Delete</a></li>
          </ul>
	
<script>
function myConfirm() {
  var result = confirm("Want to delete?");
  if (result==true) {
   return true;
  } else {
   return false;
  }
}
</script>

<?php include("./includes/sidebar.php"); ?>