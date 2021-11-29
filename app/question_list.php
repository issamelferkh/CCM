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

<div class="nav-scroller bg-body shadow-sm">
  <nav class="nav nav-underline" aria-label="Secondary navigation">
    <a class="nav-link" href="../app/question_add.php">New Question</a>
  </nav>
</div>

<main class="container">
  <?php include_once("./../includes/title.php"); ?>

  <div class="my-3 p-3 bg-body rounded shadow-sm">
    <h6 class="border-bottom pb-2 mb-10">FAG</h6>
    <div class="table-wrapper">
      <!-- <table id="table_id" class="display"> -->
      <table id="table_id" class="display">
        <thead>
          <tr>
            <th>Questions</th>
          </tr>
        </thead>
        <tbody>
          <?php

if(isset($_GET["id"])) {
  $id_cat = htmlspecialchars($_GET["id"]);
} else {
  $id_cat = 0;
}

$q = 'SELECT * FROM `question` WHERE `id_cat`= "'.$id_cat.'" ';//q = query
$q = $db->query($q);
$q->execute();
$c = $q->rowCount(); //c = count
$r = $q->fetchAll(PDO::FETCH_ASSOC); // r = row
$i = 0; // i = index

  while ($i < $c) {
    echo "
      <tr>
        <td>
          <a href='question_detail.php?id=".$r[$i]["id_question"]."'></i> <i class='fas fa-question-circle' style='font-size: 1em; color: #6f42c1;'></i></a>&nbsp
          ".$r[$i]["question"]."
        </td>
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


