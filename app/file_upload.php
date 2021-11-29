<?php include_once("./../includes/header.php"); ?>
<?php include_once '../config/connection.php'; ?>

<?php
// Uploads files
if (isset($_POST['file_upload']) && isset($_FILES) && isset($_POST['id_folder'])) {
    $id_folder = $_POST['id_folder'];
    // name of the uploaded file
    $filename = $_FILES['myfile']['name'];

    // destination of the file on the server
    $destination = '../uploads/' . $filename;

    // get the file extension
    $extension = pathinfo($filename, PATHINFO_EXTENSION);

    // the physical file on a temporary uploads directory on the server
    $file = $_FILES['myfile']['tmp_name'];
    $size = $_FILES['myfile']['size'];

    if (!in_array($extension, ['zip', 'pdf', 'docx', 'png'])) {
        echo "You file extension must be .zip, .pdf or .docx";
    } elseif ($_FILES['myfile']['size'] > 1000000) { // file shouldn't be larger than 1Megabyte
        echo "File too large!";
    } else {
        // move the uploaded (temporary) file to the specified destination
        if (move_uploaded_file($file, $destination)) {
          $query = 'INSERT INTO `file` (`id_folder`,`name`,`size`,`path`) 
          VALUES (?,?,?,?)';
            $query = $db->prepare($query);
            if ($query->execute([$id_folder, $filename, $size,$destination])) {
                echo "
                <script>
                  const msg = 'Done.';
                  window.location.href='dashboard.php?master_id=".$id_folder."&msg='+msg;
                </script>
                ";
            } else {
              echo "
                <script>
                  const msg = 'Sorry, something went wrong!';
                  window.location.href='dashboard.php?master_id=".$id_folder."&msg='+msg;
                </script>
                ";
            } 
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

<?php
  if(isset($_GET["id_folder"])) {
    $id_folder = htmlspecialchars($_GET["id_folder"]);
  } else {
    $id_folder = 0;
  }
?>

<main class="container">
  <?php include_once("./../includes/title.php"); ?>

  <div class="my-3 p-3 bg-body rounded shadow-sm">
    <h6 class="border-bottom pb-2 mb-10">Upload File</h6>
    <form action="" method="post" enctype="multipart/form-data" >
      <input type="hidden" name="id_folder" value="<?php echo $id_folder; ?>"> <br>
      <div class="row">
        <div class="p-2 col-md-12">
          <input type="file" name="myfile" class="form-control" placeholder="Folder Name" required >
        </div>
      </div>
      <button type="submit" name="file_upload" class="btn btn-primary">Submit</button>
    </form>
  </div>
</main>

<?php include_once("./../includes/footer.php"); ?>
