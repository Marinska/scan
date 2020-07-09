<script language="javascript">
function onEnter(e){// => Digunakan untuk membaca karakter enter
    var key=e.keyCode || e.which;
    if(key==13){// => Karakter enter dikenali sebagai angka 13
        showCell();
    }
}

function showCell(){
}
</script>
<div>
<form method="get">
			<input type="text" id="scanbar" name="scanbar" onkeypress="onEnter(event)" placeholder="Scan here"/>
</form>
<?php
$today = date("dmY");
echo $today;
?>
<table border="1" cellspacing="1" style=text-align:center;>
	<tr>
		<td>NO.</td>
		<td>OBC</td>
		<td>Seri</td>
		<td>Tipe</td>
		<td>Jumlah</td>
	</tr>
	<tr>
		<?php
	//koneksi ke database
	$koneksi = mysqli_connect("localhost","root","","scan");
	if(isset($_GET['scanbar'])){
	$cari = $_GET['scanbar'];
	$copy = mysqli_query($koneksi,"insert into daily select * from list where No like $cari");
	$sum = mysqli_query($koneksi,"select sum(jumlah) from daily");
	 }
	//query menampilkan data
	$sql = mysqli_query($koneksi,"select * from daily");
	$no = 1;
	while($data = mysqli_fetch_assoc($sql)):?>
			<td><?php echo $no++; ?></td>
            <td><?php echo $data['obc']; ?></td>
            <td><?php echo $data['seri']; ?></td>
			<td><?php echo $data['tipe']; ?></td>
			<td><?php echo $data['jumlah']; ?></td>
	</tr>
	<?php endwhile; ?> 
	<tr><?php $sum=mysqli_query($koneksi,"SELECT SUM(jumlah) FROM daily;");
	$sumd = mysqli_fetch_assoc($sum)?>
	<td colspan="5"><?php echo implode("",$sumd);?></td>
</table>
</div>