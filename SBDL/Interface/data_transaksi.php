<h2> data transaksi </h2>
<table class="table table-bordered">
	<thead>
		<tr>
			<th>Notransaksi</th>
			<th>Username</th>
			<th>Id</th>
			<th>Harga</th>
			<th>Nama</th>
			<th>Jumlah</th>
			<th>Subtotal</th>
		</tr>
	</thead>
	<tbody>
		<?php $ambil=$koneksi->query("SELECT * FROM data_transaksi"); ?>
		<?php while($pecah = $ambil->fetch_assoc()){ ?>
		<tr>
			<td><?php echo $pecah['Notransaksi']; ?></td>
			<td><?php echo $pecah['Username']; ?></td>
			<td><?php echo $pecah['Id']; ?></td>
			<td><?php echo $pecah['Harga']; ?></td>
			<td><?php echo $pecah['Nama']; ?></td>
			<td><?php echo $pecah['Jumlah']; ?></td>
			<td><?php echo $pecah['Subtotal']; ?></td>
		</tr>
		<?php } ?>

	</tbody>
</table>