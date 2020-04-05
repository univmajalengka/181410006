<h2> data No transaksi </h2>
<table class="table table-bordered">
	<thead>
		<tr>
			<th>Username</th>
			<th>No transaksi</th>
		</tr>
	</thead>
	<tbody>
		<?php $ambil=$koneksi->query("SELECT * FROM data_notransaksi"); ?>
		<?php while($pecah = $ambil->fetch_assoc()){ ?>
		<tr>
			<td><?php echo $pecah['Notransaksi']; ?></td>
			<td><?php echo $pecah['Username']; ?></td>
		<?php } ?>

	</tbody>
</table>