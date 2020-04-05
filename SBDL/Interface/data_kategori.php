<h2> data Kategori </h2>
<table class="table table-bordered">
	<thead>
		<tr>
			<th>Id</th>
			<th>Kategori</th>
		</tr>
	</thead>
	<tbody>
		<?php $ambil=$koneksi->query("SELECT * FROM data_kategori"); ?>
		<?php while($pecah = $ambil->fetch_assoc()){ ?>
		<tr>
			<td><?php echo $pecah['Id']; ?></td>
			<td><?php echo $pecah['Kategori']; ?></td>
		</tr>
		<?php } ?>

	</tbody>
</table>