<?php include('includes/header.php');?>
<div class="report">
	<div class="container">
		<div class="text-center">
			<h2>SATIŞ RAPORLARI</h2>
		</div>
		<table class="table">
			<thead>
				<tr>
					<td><b>Tarih</b></td>
					<td><b>Tutar</b></td>
					<td class="text-right"><b>İşlem</b></td>
				</tr>
			</thead>
			<tbody>
				<?php foreach($orders as $key => $val){ ?>
					<tr>
						<td><?php echo date('d-m-Y H:i:s',$val['order_insert_time']);?></td>
						<td><?php echo $val['total_price'];?></td>
						<td class="text-right">
							<a href="<?php echo ORDER_DETAILS.$val['order_id'];?>" class="btn btn-sm btn-info">SATIŞ DETAYLARI</a>
						</td>
					</tr>
				<?php } ?>
			</tbody>
		</table>
	</div>
</div>
<?php include('includes/footer.php');?>