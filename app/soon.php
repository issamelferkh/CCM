<?php include_once("./../includes/header.php"); ?>
<?php include_once '../config/connection.php'; ?>

<?php

  // if(isset($_POST["folder_add"])) {
  //   if( empty($_POST["name"]) ) {
  //     $msg = 'Folder name field is required !';	
  //   } else {
  //     $name = htmlspecialchars($_POST['name']);
  //     $title = htmlspecialchars($_POST['title']);
  //     $description = htmlspecialchars($_POST['description']);
  //     $id_user = $_SESSION['id_user'];
  //     $master_id = htmlspecialchars($_POST['master_id']);


  //     $query = 'INSERT INTO `folder` (`name`,`title`,`description`,`id_user`,`master_id`) 
  //     VALUES (?,?,?,?,?)';
  //       $query = $db->prepare($query);
  //       if ($query->execute([$name, $title, $description,$id_user, $master_id])) {
  //         echo "
  //           <script>
  //             const msg = 'Done.';
  //             window.location.href='dashboard.php?master_id=".$r[$i]["master_id"]."&msg='+msg;
  //           </script>
  //           ";
  //       } else {
  //         echo "
  //           <script>
  //             const msg = 'Sorry, something went wrong!';
  //             window.location.href='dashboard.php?msg='+msg;
  //           </script>
  //           ";
  //       }
  //   }

	// }
?>



<?php include_once("./../includes/navbar.php"); ?>
<div class="nav-scroller bg-body shadow-sm">
  <nav class="nav nav-underline" aria-label="Secondary navigation">
    <!-- <a class="nav-link" href="../app/folder_add.php?master_id=<?php echo $master_id; ?> ">New Folder</a>
    <a class="nav-link" href="../app/file_upload.php">Upload File</a> -->
  </nav>
</div>

<main class="container">
  <?php include_once("./../includes/title.php"); ?>

  <div class="my-3 p-3 bg-body rounded shadow-sm">
    <h6 class="border-bottom pb-2 mb-10">Upload File</h6>
    <div class='col'>
      <div class='alert alert-info' role='alert'>
      Coming Soon !
      </div>
    </div>

  </div>
</main>

<?php include_once("./../includes/footer.php"); ?>
