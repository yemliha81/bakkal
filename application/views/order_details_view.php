<?php include('includes/header.php');?>
<div class="report">
	<div class="container">
		<div class="text-center">
			<h2><?php echo date('d-m-Y H:i', $order['order_insert_time']);?></h2>
			<hr>
		</div>
		<table class="table">
			<thead>
				<tr>
					<td><b>Ürün</b></td>
					<td><b>Miktar</b></td>
					<td><b>Birim Fiyat</b></td>
					<td class="text-right"><b>Toplam Tutar</b></td>
				</tr>
			</thead>
			<tbody>
				<?php foreach($orders as $key => $val){ ?>
					<tr>
						<td><?php echo $val['pro_name'];?></td>
						<td><?php echo $val['qty'];?></td>
						<td><?php echo $val['price'];?></td>
						<td class="text-right"><?php echo number_format(($val['qty']*$val['price']), 2);?></td>
					</tr>
				<?php } ?>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td class="text-right"><b><?php echo number_format(($order['total_price']), 2);?></b></td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
<?php include('includes/footer.php');?>