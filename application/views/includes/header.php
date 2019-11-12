<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="content-language" content="en"/>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
	<meta name="description" content="">
	<link rel="stylesheet" href="<?php echo ASSETS;?>css/bootstrap.min.css"/>
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="<?php echo ASSETS;?>fonts/font-awesome/css/font-awesome.min.css"/>
	<title>Perakende Satış V1.0</title>
	
	<style>
		body{font-family:Verdana;}
		.h100{height:100vh;}
		.p5{padding:5px;}
		.w10{width:10%; float:left;}
		.w15{width:15%; float:left;}
		.w20{width:20%; float:left;}
		.w30{width:30%; float:left;}
		.w40{width:40%; float:left;}
		.w50{width:50%; float:left;}
		.w55{width:55%; float:left;}
		.w65{width:65%; float:left;}
		.w90{width:90%; float:left;}
		.w75{width:75%; float:left;}
		.w100{width:100%;}
		.tt{padding:20px 10px;}
		.ShopList{overflow: auto;height: 80vh;}
		.divBox{line-height:1; height:50px;}
		.divBox a{display:block; padding:20px 0;}
		.barcodeInput{width:100%; line-height:1; padding:16px;font-size:20px;border:0;border-style:solid;}
		.barcodeInput:focus{outline:none;}
		.bR{border-right:1px solid #ddd;}
		.bL{border-left:1px solid #ddd;}
		.bB{border-bottom:1px solid #ddd;}
		.bT{border-Top:1px solid #ddd;}
		.svShop{position:absolute; bottom:15px; right:15px;}
		.total_p{padding:15px; font-weight:bold; font-size:18px; text-align:left; }
		.tbl{display:table; height:100vh; width:100vw;}
		.tbl-row{display:table-row;}
		.tbl-cell{display:table-cell; border:1px solid #ddd; }
		.rell{position:relative;}
		.cent{position:absolute; top:0; bottom:0; left:0; right:0; display:flex; align-items:center; }
		.msg{position:absolute; right:15px; bottom:0; z-index:5;}
		.products{padding: 5px 0 0 5px}
		.proBox{width: 23%; position:relative; overflow: hidden; box-sizing: border-box; border:1px solid #ddd; border-radius: 5px; margin: 5px;  float:left; cursor: pointer;}
		.proName{font-size: 12px; position: absolute; bottom: 0;left: 0;right: 0; padding: 5px; background: rgba(0,0,0,0.5); color: #fff;}
	</style>
</head>
<body>