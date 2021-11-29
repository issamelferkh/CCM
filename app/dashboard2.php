<?php include_once("./../includes/header.php"); ?>
<?php include_once '../config/connection.php'; ?>
<?php include_once("./../includes/navbar.php"); ?>

<!-- Recover Master ID to use it in new folder -->
<?php
  if(isset($_GET["master_id"])) {
    $master_id = htmlentities($_GET["master_id"]);
  } else {
    $master_id = 0;
  }

  $q = 'SELECT * FROM `folder` WHERE `master_id`= "'.$master_id.'" ';//q = query
  $q = $db->query($q);
  $q->execute();
  $c = $q->rowCount(); //c = count
  $r = $q->fetchAll(PDO::FETCH_ASSOC); // r = row
  $i = 0; // i = index
?>

<div class="nav-scroller bg-body shadow-sm">
  <nav class="nav nav-underline" aria-label="Secondary navigation">
    <a class="nav-link" href="../app/folder_add.php?master_id=<?php echo $master_id; ?> ">New Folder</a>
    <a class="nav-link" href="../app/file_upload.php?id_folder=<?php echo $r[$i]["id_folder"]; ?>">Upload File</a>
  </nav>
</div>

<main class="container">
  <?php include_once("./../includes/title.php"); ?>

  <div class="my-3 p-3 bg-body rounded shadow-sm">
    <h6 class="border-bottom pb-2 mb-10">Dashboard</h6>

    <!-- List Folders -->
    <div class="row row-cols-1 row-cols-md-3 g-4">
      <!-- folder structer example -->
      <!-- <div class="col">
        <div class="card">
          <div class="card-header"><i class="bi bi-archive"> Folder_01</i></div>
          <div class="card-body text-secondary">
            <h5 class="card-title">A brief description of Folder_01</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <i class="bi bi-person-circle"> presnom.nom@um6p.ma</i>
            <a href="sub_folder_l1.php" class="stretched-link"></a>
          </div>
        </div>
      </div> -->

      <?php
        if ($i < $c) {
          while ($i < $c) {
            echo "
                <div class='col'>
                  <div class='card'>
                    <div class='card-header'><i class='bi bi-archive'> ".$r[$i]["name"]."</i></div>
                    <div class='card-body text-secondary'>
                      <h5 class='card-title'>".$r[$i]["title"]."</h5>
                      <p class='card-text'>".$r[$i]["description"]."</p>
                      <i class='bi bi-person-circle'> presnom.nom@um6p.ma</i>
                      <a href='dashboard.php?master_id=".$r[$i]["id_folder"]."' class='stretched-link'></a>
                    </div>
                  </div>
                </div>
                ";
            $i++;
          }
        } else {
          echo "
              <div class='col'>
                <div class='alert alert-warning' role='alert'>
                  Empty Folder !
                </div>
              </div>
          ";
        }                        
      ?>
    </div>    
  </div>
</main>

<?php include_once("./../includes/footer.php"); ?>
