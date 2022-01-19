
<?php include_once '../config/connection.php';?>

<?php
		if(isset($_GET['id'])) {
			$id_file = htmlspecialchars($_GET['id']);
			$sql = 'DELETE FROM `file` WHERE `id_file` = "'.$id_file.'"';
			$sql = $db->prepare($sql);
			if ($sql->execute()) {
				echo "
					<script>
						const msg = 'Done.';
						window.location.href='dashboard.php?msg='+msg;
					</script>
					";
			} else {
			echo "Sorry, something went wrong";
			}
		} else {
			echo "
					<script>
						const msg = 'Sorry, something went wrong!';
						window.location.href='dashboard.php?msg='+msg;
					</script>
					";
		}
?>