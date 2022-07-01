<!DOCTYPE html>
<html lang="zxx">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="description" content="Orbitor,business,company,agency,modern,bootstrap4,tech,software">
  <meta name="author" content="themefisher.com">

  <title>Novena- Health & Care Medical template</title>

  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="/images/favicon.ico" />

  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
  <!-- Icon Font Css -->
  <link rel="stylesheet" href="plugins/icofont/icofont.min.css">
  <!-- Slick Slider  CSS -->
  <link rel="stylesheet" href="plugins/slick-carousel/slick/slick.css">
  <link rel="stylesheet" href="plugins/slick-carousel/slick/slick-theme.css">
  <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Laravel </title>
    <base href="{{asset('')}}"></base>
	<link href='http://fonts.googleapis.com/css?family=Dosis:300,400' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="source/assets/dest/css/font-awesome.min.css">
	<link rel="stylesheet" href="source/assets/dest/vendors/colorbox/example3/colorbox.css">
	<link rel="stylesheet" href="source/assets/dest/rs-plugin/css/settings.css">
	<link rel="stylesheet" href="source/assets/dest/rs-plugin/css/responsive.css">
	<link rel="stylesheet" title="style" href="source/assets/dest/css/style.css">
	<link rel="stylesheet" href="source/assets/dest/css/animate.css">
	<link rel="stylesheet" title="style" href="source/assets/dest/css/huong-style.css">

  <!-- Main Stylesheet -->
  <link href="{{url('css/style.css')}}" title="style" rel="stylesheet" />
  <link href="{{url('js/script.js')}}" />


</head>

<body id="top">

<header>
	<div class="header-top-bar">
		<div >
			<ul >
				<img src="https://designercomvn.s3.ap-southeast-1.amazonaws.com/wp-content/uploads/2018/09/20100512/RAY1.png" alt=""style="height: 90px;">
			</ul>
		</div>
		
	</div>
	
    <div class="container">
		<div id="content" class="space-top-none">
			<div class="main-content">
                <br>
                <br>
            <th scope="col"><a href="{{route('add-product')}}" class="btn btn-primary" style="width:80px;">Add new</a></th>
				<div class="space60">&nbsp;</div>
				<div class="row">
					<div class="col-sm-12">
						<div class="beta-products-list">
							<center><h1>HOA QUẢ</h1></center>
							<div class="beta-products-details">
								<div class="clearfix"></div>
							</div>
							<div class="row">
								@foreach($products as $hq)
								<div class="col-sm-3">
									<div class="single-item">
										<div class="single-item-header">
											<a href="detail/{{$hq->id}}"><img src="/assets/images/products/{{$hq->image}}" alt=""style="height: 200px;"></a>
										</div>
										<div class="single-item-body">
											<p class="single-item-title">{{$hq->nameProduct}}</p>
											<p class="single-item-price">
												<span class="flash-del">{{$hq->unit_price}}đồng</span>
												<span class="flash-del">{{$hq->promotion_price}}đồng</span>
											</p>
										</div>
										<div class="single-item-caption">
											<a class="add-to-cart pull-left" href="shopping_cart.html"><i class="fa fa-shopping-cart"></i></a>
											<a class="beta-btn primary" href="detail/{{$hq->id}}">Details <i class="fa fa-chevron-right"></i></a>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
								@endforeach
							</div>
							<div class="row">{{$products->links()}}</div>
						</div> <!-- .beta-products-list -->

						<div class="space50">&nbsp;</div>
					</div>
                    <div class="col-sm-12">
						<div class="beta-products-list">
							<center><h1>THỰC PHẨM KHÔ</h1></center>
							<div class="beta-products-details">
								<div class="clearfix"></div>
							</div>
							<div class="row">
								@foreach($products1 as $tpk)
								<div class="col-sm-3">
									<div class="single-item">
										<div class="single-item-header">
											<a href="detail/{{ $tpk->id}}"><img src="/assets/images/products/{{$tpk->image}}" alt="" style="height: 200px;"></a>
										</div>
										<div class="single-item-body">
											<p class="single-item-title">{{ $tpk->nameProduct}}</p>
											<p class="single-item-price">
												<span class="flash-del">{{ $tpk->unit_price}}đồng</span>
												<span class="flash-del">{{ $tpk->promotion_price}}đồng</span>
											</p>
										</div>
										<div class="single-item-caption">
											<a class="add-to-cart pull-left" href="shopping_cart.html"><i class="fa fa-shopping-cart"></i></a>
											<a class="beta-btn primary" href="detail/{{ $tpk->id}}">Details <i class="fa fa-chevron-right"></i></a>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
								@endforeach
							</div>
							<div class="row">{{$products->links()}}</div>
						</div> <!-- .beta-products-list -->

						<div class="space50">&nbsp;</div>
					</div>
                    <div class="col-sm-12">
						<div class="beta-products-list">
							<center><h1>RAU HỮU CƠ</h1></center>
							<div class="beta-products-details">
								<div class="clearfix"></div>
							</div>
							<div class="row">
								@foreach($products2 as $hc)
								<div class="col-sm-3">
									<div class="single-item">
										<div class="single-item-header">
											<a href="detail/{{ $hc->id}}"><img src="/assets/images/products/{{$hc->image}}" alt="" style="height: 200px;"></a>
										</div>
										<div class="single-item-body">
											<p class="single-item-title">{{ $hc->nameProduct}}</p>
											<p class="single-item-price">
												<span class="flash-del">{{ $hc->unit_price}}đồng</span>
												<span class="flash-del">{{ $hc->promotion_price}}đồng</span>
											</p>
										</div>
										<div class="single-item-caption">
											<a class="add-to-cart pull-left" href="shopping_cart.html"><i class="fa fa-shopping-cart"></i></a>
											<a class="beta-btn primary" href="detail/{{ $hc->id}}">Details <i class="fa fa-chevron-right"></i></a>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
								@endforeach
							</div>
							<div class="row">{{$products->links()}}</div>
						</div> <!-- .beta-products-list -->

						<div class="space50">&nbsp;</div>
					</div>
				</div> <!-- end section with sidebar and main content -->


			</div> <!-- .main-content -->
		</div> <!-- #content -->
	</div> <!-- .container -->
<!-- footer Start -->


	<!--customjs-->
	<script src="source/assets/dest/js/custom2.js"></script>
	
  </body>
  </html>
   