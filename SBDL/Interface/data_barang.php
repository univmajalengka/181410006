<h2> data barang </h2>
<table class="table table-bordered">
	<thead>
		<tr>
			<th>Id</th>
			<th>Nama_busana</th>
			<th>Deskripsi</th>
			<th>Warna</th>
			<th>Ukuran</th>
			<th>Kategori</th>
			<th>Harga</th>
			<th>Stock</th>
		</tr>
	</thead>
	<tbody>
		<?php $ambil=$koneksi->query("SELECT * FROM data_barang"); ?>
		<?php while($pecah = $ambil->fetch_assoc()){ ?>
		<tr>
			<td><?php echo $pecah['Id']; ?></td>
			<td><?php echo $pecah['Nama_busana']; ?></td>
			<td><?php echo $pecah['Deskripsi']; ?></td>
			<td><?php echo $pecah['Warna']; ?></td>
			<td><?php echo $pecah['Ukuran']; ?></td>
			<td><?php echo $pecah['Kategori']; ?></td>
			<td><?php echo $pecah['Harga']; ?></td>
			<td><?php echo $pecah['Stock']; ?></td>
		</tr>
		<?php } ?>

	</tbody>
</table>