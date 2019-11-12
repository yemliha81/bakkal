<?php include('includes/header.php');?>
<div class="w10 h100 bR p5" style="position:relative;">
	<a href="<?php echo MAIN_BOARD;?>" class="btn btn-info form-control">Anasayfa</a>
</div>
<div class="w90 report">
	<div class="container">
		<div class="text-center">
			<h2>SATIŞ RAPORLARI</h2>
		</div>
		<table class="table">
			<thead>
				<tr>
					<td><b>Başlangıç Tarihi</b></td>
					<td><b>Bitiş Tarihi</b></td>
					<td class="text-right"><b>İşlem</b></td>
				</tr>
			</thead>
			<tbody>
				<?php foreach($day_list as $key => $val){ ?>
					<tr>
						<td><?php echo date('d-m-Y H:i:s', $val['day_start_time']);?></td>
						<td>
						<?php if($val['day_end_time'] > 0){ echo date('d-m-Y H:i:s', $val['day_end_time']); }else{?>
						Gün Sonu yapılmadı
						<?php } ?>
						</td>
						<td class="text-right">
							<a href="<?php echo DAY_REPORT.$val['day_id'];?>" class="btn btn-sm btn-info">SATIŞ DETAYLARI</a>
						</td>
					</tr>
				<?php } ?>
			</tbody>
		</table>
	</div>
</div>
<?php include('includes/footer.php');?>