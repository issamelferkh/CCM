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
<!-- Fetch Question Data -->
<?php
if (isset($_GET['id'])) {
  $id_question = htmlentities($_GET['id']);
} else {
  $id_question = 0;
}
  $q1 = 'SELECT * FROM `question` WHERE `id_question` like "'.$id_question.'"';
  $result = $db->query($q1);
  $r1 = $result->fetch(PDO::FETCH_ASSOC);
?>

<?php

  if(isset($_POST["answer_add"])) {
    if (empty($_POST["answer"]) || empty($_POST["id_question"])) {
      $msg = 'All field are required !';	
    } else {
      $answer = htmlspecialchars($_POST['answer']);
      $id_question = htmlspecialchars($_POST['id_question']);

      $query = 'INSERT INTO `answer` (`id_question`,`answer`) 
      VALUES (?,?)';
        $query = $db->prepare($query);
        if ($query->execute([$id_question, $answer])) {
          echo "
            <script>
              const msg = 'Done.';
              window.location.href='question_detail.php?id=".$id_question."&msg='+msg;
            </script>
            ";
        } else {
          echo "
            <script>
              const msg = 'Sorry, something went wrong!';
              window.location.href='question_detail.php?id=".$id_question."&msg='+msg;
            </script>
            ";
        }
    }

	}
?>


<?php include_once("./../includes/navbar.php"); ?>

<div class="nav-scroller bg-body shadow-sm">
  <nav class="nav nav-underline" aria-label="Secondary navigation">
    <a class="nav-link" href="../app/question_add.php">New Question</a>
  </nav>
</div>

<main class="container">
  <?php include_once("./../includes/title.php"); ?>

    <!-- Question CARD -->
    <div class="my-3 p-3 bg-body rounded shadow-sm">
    <div class="row row-cols-1 row-cols-md-12 g-12">
      <div class="col">
        <div class="card">
          <div class="card-header"><i class="bi bi-archive"> Issam EL FEKRH</i></div>
          <div class="card-body text-secondary">
            <h5 class="card-title"><?php if (isset($r1['question'])) echo $r1['question']; ?></h5>
          </div>
        </div>
      </div>
    </div>
  </div>

    <!-- Answers -->
  <div class="my-3 p-3 bg-body rounded shadow-sm">
    <h6 class="border-bottom pb-2 mb-10">Answers</h6>
    <div class="row row-cols-1 row-cols-md-1">
      <!-- Fetch Answers Data -->
    <?php
      $q2 = 'SELECT * FROM `answer` WHERE `id_question` like "'.$r1['id_question'].'"'; //q = query
      $q2 = $db->query($q2);
      $q2->execute();
      $c2 = $q2->rowCount(); //c = count
      $r2 = $q2->fetchAll(PDO::FETCH_ASSOC); // r = row
      $i2 = 0; // i = index

      while ($i2 < $c2) {
        echo "
          <div class='col' style='padding-bottom: 20px;'>
            <div class='card'>
              <div class='card-header'><i class='bi bi-archive'> Issam EL FERKH</i></div>
              <div class='card-body text-secondary'>
                <p class='card-text'>".$r2[$i2]["answer"]."</p>
              </div>
              <div class='card-footer text-muted'>
                ".$r2[$i2]["create_at"]."
              </div>
            </div>
          </div>
            ";
        $i2++;
      }
    ?>

      <!-- <div class="col" style="padding-bottom: 20px;">
        <div class="card">
          <div class="card-header"><i class="bi bi-archive"> Issam EL FERKH</i></div>
          <div class="card-body text-secondary">
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          </div>
          <div class="card-footer text-muted">
            2 days ago
          </div>
        </div>
      </div> -->

    </div>
  </div>

  <!-- Add New Answer -->
  <div class="my-3 p-3 bg-body rounded shadow-sm">
    <h6 class="border-bottom pb-2 mb-10">Add Your Answer</h6>
    <form method="POST">
      <div class="row">
        <div class="p-2 col-md-12">
          <input type="hidden" name="id_question" value="<?= $r1['id_question']; ?>">

          <textarea class="form-control" name="answer" rows="3"></textarea>
        </div>
      </div>
      <button type="submit" name="answer_add" class="btn btn-primary">Submit</button>
    </form>

  </div>
</main>

<?php include_once("./../includes/footer.php"); ?>


