<?php include_once("./../includes/header.php"); ?>
<?php include_once '../config/connection.php'; ?>
<?php include_once("./../includes/navbar.php"); ?>

<div class="nav-scroller bg-body shadow-sm">
  <nav class="nav nav-underline" aria-label="Secondary navigation">
    <a class="nav-link" href="../app/question_add.php">Submit New Question</a>
  </nav>
</div>

<main class="container">
  <?php include_once("./../includes/title.php"); ?>

  <div class="my-3 p-3 bg-body rounded shadow-sm">
    <h6 class="border-bottom pb-2 mb-10">Forum</h6>
    <!-- Categories List -->
    <div class="row row-cols-1 row-cols-md-3 g-4">
      <div class="col">
        <div class="card">
          <div class="card-header"><i class="bi bi-archive"> Gategory A</i></div>
          <div class="card-body text-secondary">
            <h5 class="card-title">A brief description of Category A</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="question_list.php?id=1" class="stretched-link"></a>
          </div>
        </div>
      </div>

      <div class="col">
        <div class="card">
          <div class="card-header"><i class="bi bi-archive"> Gategory B</i></div>
          <div class="card-body text-secondary">
            <h5 class="card-title">A brief description of Category B</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="question_list.php?id=2" class="stretched-link"></a>
          </div>
        </div>
      </div>

      <div class="col">
        <div class="card">
          <div class="card-header"><i class="bi bi-archive"> Gategory C</i></div>
          <div class="card-body text-secondary">
            <h5 class="card-title">A brief description of Category C</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="question_list.php?id=3" class="stretched-link"></a>
          </div>
        </div>
      </div>

      <div class="col">
        <div class="card">
          <div class="card-header"><i class="bi bi-archive"> Gategory D</i></div>
          <div class="card-body text-secondary">
            <h5 class="card-title">A brief description of Category D</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="question_list.php?id=4" class="stretched-link"></a>
          </div>
        </div>
      </div>

    </div>    
  </div>
</main>

<?php include_once("./../includes/footer.php"); ?>
