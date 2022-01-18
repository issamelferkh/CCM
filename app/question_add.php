<?php include_once("./../includes/header.php"); ?>
<?php include_once '../config/connection.php'; ?>

<?php

  if(isset($_POST["question_add"])) {
    if( empty($_POST["id_cat"]) || empty($_POST["question"]) ) {
      $msg = 'All field are required !';	
    } else {
      $question = htmlspecialchars($_POST['question']);
      $id_cat = htmlspecialchars($_POST['id_cat']);
      $id_user = $_SESSION['id_user'];

      $query = 'INSERT INTO `question` (`question`,`id_cat`, `id_user`) 
      VALUES (?,?,?)';
        $query = $db->prepare($query);
        if ($query->execute([$question, $id_cat,$id_user])) {
          echo "
            <script>
              const msg = 'Done.';
              window.location.href='question_list.php?id=".$id_cat."&msg='+msg;
            </script>
            ";
        } else {
          echo "
            <script>
              const msg = 'Sorry, something went wrong!';
              window.location.href='question_list.php?id=".$id_cat."&msg='+msg;
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
    <h6 class="border-bottom pb-2 mb-10">Add New Question</h6>
    <form method="POST">
      <div class="row">
        <div class="p-2 col-md-6">
          <select class="form-select" name="id_cat">
          <?php
          // Fetch Categories
      // $q2 = 'SELECT * FROM `category`'; //q = query
      // $q2 = $db->query($q2);
      // $q2->execute();
      // $c2 = $q2->rowCount(); //c = count
      // $r2 = $q2->fetchAll(PDO::FETCH_ASSOC); // r = row
      // $i2 = 0; // i = index

      // while ($i2 < $c2) {
      //   echo "<option value='1'>Category A</option>";
      //   $i2++;
      // }
    ?>



            <option selected>Select Category</option>
            <option value="1">News</option>
            <option value="2">Scientific DiscussionB</option>
            <option value="3">Scientific Readings</option>
            <!-- <option value="4">Category D</option> -->
          </select>
        </div>

        <div class="p-2 col-md-6">
          <input type="text" name="question" class="form-control" placeholder="Please enter your question here ...">
        </div>
      </div>
      <button type="submit" name="question_add" class="btn btn-primary">Submit</button>
    </form>

  </div>
</main>

<?php include_once("./../includes/footer.php"); ?>
