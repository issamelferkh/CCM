<?php include_once("./../includes/header.php"); ?>
<?php include_once '../config/connection.php'; ?>
<!-- DataTables -->
<script>
	$(document).ready( function () {
    $('#table_id').DataTable({
			responsive: true
		});
	} );
</script>

<?php include_once("./../includes/navbar.php"); ?>

<!-- Recover Master ID to use it in new folder -->
<?php
  if(isset($_GET["master_id"])) {
    $master_id = $_GET["master_id"];
  } else {
    $master_id = 0;
  }

  // Fetch Folders
  $q = 'SELECT * FROM `folder` WHERE `master_id`= "'.$master_id.'"';//q = query
  $q = $db->query($q);
  $q->execute();
  $c = $q->rowCount(); //c = count
  $r = $q->fetchAll(PDO::FETCH_ASSOC); // r = row
  $i = 0; // i = index

  // Fetch Files
  $q2 = 'SELECT * FROM `file` WHERE `id_folder`= "'.$master_id.'"';//q = query
  $q2 = $db->query($q2);
  $q2->execute();
  $c2 = $q2->rowCount(); //c = count
  $r2 = $q2->fetchAll(PDO::FETCH_ASSOC); // r = row

?>

<div class="nav-scroller bg-body shadow-sm">
  <nav class="nav nav-underline" aria-label="Secondary navigation">
    <a class="nav-link" href="../app/folder_add.php?master_id=<?php echo $master_id; ?> ">New Folder</a>
    <a class="nav-link" href="../app/file_upload.php?id_folder=<?php echo $master_id; ?>">Upload File</a>
  </nav>
</div>

<main class="container">
  <?php include_once("./../includes/title.php"); ?>

  <div class="my-3 p-3 bg-body rounded shadow-sm">
    <h6 class="border-bottom pb-2 mb-10">Dashboard</h6>
    <div class="table-wrapper">
      <!-- <table id="table_id" class="display"> -->
      <table id="table_id" class="display">
        <thead>
          <tr>
            <th>Name</th>
            <th>Description</th>
          </tr>
        </thead>
        <tbody>
          <?php
// Folders
  while ($i < $c) {
    echo "
      <tr>
        <td>
          <a href='dashboard.php?master_id=".$r[$i]["id_folder"]."'><i class='fas fa-share-square' style='font-size: 1em; color: green;'></i></a>&nbsp
          <a href='folder_delete.php?id=".$r[$i]["id_folder"]."'  onclick='return myConfirm();'><i class='fas fa-trash-alt' style='font-size: 1em; color: #f15968;'></i></a>&nbsp
          <a href='dashboard.php?master_id=".$r[$i]["id_folder"]."'><i class='fas fa-folder' style='font-size: 1em; color: #6f42c1;'></i></a>&nbsp
          ".$r[$i]["name"]."
        </td>

        <td>".$r[$i]["description"]."</td>
      </tr>
        ";
    $i++;
  }

  // Files
  $i = 0;
  while ($i < $c2) {
    echo "
      <tr>
        <td>
          <a href='dashboard.php?master_id=".$r2[$i]["id_folder"]."'><i class='fas fa-share-square' style='font-size: 1em; color: green;'></i></a>&nbsp
          <a href='folder_delete.php?id=".$r2[$i]["id_folder"]."'  onclick='return myConfirm();'><i class='fas fa-trash-alt' style='font-size: 1em; color: #f15968;'></i></a>&nbsp
          <a href='dashboard.php?master_id=".$r2[$i]["id_folder"]."'><i class='far fa-file' style='font-size: 1em; color: #6f42c1;'></i></a>&nbsp
          ".$r2[$i]["name"]."
        </td>
        <td>".$r2[$i]["name"]."</td>
      </tr>
        ";
    $i++;
  }


          ?>
        </tbody>
      </table>


    </div>
  </div>
</main>

<script>
function myConfirm() {
  var result = confirm("Are you sure to delete this item?");
  if (result==true) {
   return true;
  } else {
   return false;
  }
}
</script>

<?php include_once("./../includes/footer.php"); ?>


