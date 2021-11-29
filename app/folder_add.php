<?php include_once("./../includes/header.php"); ?>
<?php include_once '../config/connection.php'; ?>

<?php

  if(isset($_POST["folder_add"])) {
    if( empty($_POST["name"]) ) {
      $msg = 'Folder name field is required !';	
    } else {
      $name = htmlspecialchars($_POST['name']);
      $title = htmlspecialchars($_POST['title']);
      $description = htmlspecialchars($_POST['description']);
      $id_user = $_SESSION['id_user'];
      $master_id = htmlspecialchars($_POST['master_id']);


      $query = 'INSERT INTO `folder` (`name`,`title`,`description`,`id_user`,`master_id`) 
      VALUES (?,?,?,?,?)';
        $query = $db->prepare($query);
        if ($query->execute([$name, $title, $description,$id_user, $master_id])) {
          echo "
            <script>
              const msg = 'Done.';
                  window.location.href='dashboard.php?master_id=".$master_id."&msg='+msg;
            </script>
            ";
        } else {
          echo "
            <script>
              const msg = 'Sorry, something went wrong!';
                  window.location.href='dashboard.php?master_id=".$master_id."&msg='+msg;
            </script>
            ";
        }
    }

	}
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
    <h6 class="border-bottom pb-2 mb-10">Add New Folder</h6>
    <form method="POST">
      <?php
        if(isset($_GET["master_id"])) {
          $master_id = $_GET["master_id"];
        } else {
          $master_id = 0;
        }
      ?>
      <input type="hidden" name="master_id" value="<?= $master_id ;?>">


      <div class="row">
        <div class="p-2 col-md-3">
          <input type="text" name="name" class="form-control" placeholder="Folder Name" required >
        </div>
        <div class="p-2 col-md-3">
          <input type="text" name="title" class="form-control" placeholder="Title">
        </div>
        <div class="p-2 col-md-6">
          <input type="text" name="description" class="form-control" placeholder="Description">
        </div>
      </div>
      <button type="submit" name="folder_add" class="btn btn-primary">Submit</button>
    </form>

  </div>
</main>

<?php include_once("./../includes/footer.php"); ?>
