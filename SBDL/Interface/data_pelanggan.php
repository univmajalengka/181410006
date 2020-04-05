<h2> data pelanggan </h2>
<table class="table table-bordered">
	<thead>
		<tr>
			<th>Id</th>
			<th>Nama</th>
			<th>Alamat</th>
			<th>Email/th>
			<th>Telepon</th>
			<th>Username</th>
			<th>Password</th>
		</tr>
	</thead>
	<tbody>
		<?php $ambil=$koneksi->query("SELECT * FROM data_pelanggan"); ?>
		<?php while($pecah = $ambil->fetch_assoc()){ ?>
		<tr>
			<td><?php echo $pecah['Id']; ?></td>
			<td><?php echo $pecah['Nama']; ?></td>
			<td><?php echo $pecah['Alamat']; ?></td>
			<td><?php echo $pecah['Email']; ?></td>
			<td><?php echo $pecah['Telepon']; ?></td>
			<td><?php echo $pecah['Username']; ?></td>
			<td><?php echo $pecah['Password']; ?></td>
		</tr>
		<?php } ?>

	</tbody>
</table>