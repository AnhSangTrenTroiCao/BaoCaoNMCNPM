<?php
	include "connect.php";
	$page = $_GET['page'];
	$idsp = $_POST['idsanpham']; //gửi từ app lên
	$space = 5; //giới hạn số lượng get dữ liệu
	$limit = ($page - 1)*$page; //xđ vị trí đầu tiên, 1->5, 6->10
	$mangsanpham =  array();
	$query = "SELECT * FROM sanpham WHERE idsanpham = $idsp LIMIT $limit,$space";
	$data = mysqli_query($conn,$query);
	while($row = mysqli_fetch_assoc($data)){//đi từng dòng
		array_push($mangsanpham, new Sanpham(
			$row['id'],
			$row['tensanpham'],
			$row['giasanpham'],
			$row['hinhanhsanpham'],
			$row['motasanpham'],
			$row['idsanpham']));
	}
	// chuyển sang json
	echo json_encode($mangsanpham);
	class Sanpham{
		function Sanpham($id,$tensp,$giasp,$hinhanhsp,$motasp,$idsanpham){
			$this->id = $id;
			$this->tensp = $tensp;
			$this->giasp = $giasp;
			$this->hinhanhsp = $hinhanhsp;
			$this->motasp = $motasp;
			$this->idsanpham = $idsanpham;
		}
	}
?>
