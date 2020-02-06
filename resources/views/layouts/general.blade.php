
@php
$usuarioNombre= $user->name;

$formCarrito="/cart";
$formPerfil="";
@endphp

					<!DOCTYPE html>
					<html lang="en">
					<head>
						<meta charset="UTF-8">
						<meta name="viewport" content="width=device-width, initial-scale=1.0">
						<meta http-equiv="X-UA-Compatible" content="ie=edge">
						<title>Guitar-Hero</title>
						<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
						<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	                        <link rel="stylesheet" href={{asset("css/header-footer.css")}}>
                        <link rel="stylesheet" href={{asset("css/index1.css")}}>
					</head>
					<body>
					{{-- <div class="contenedor"> --}}

					<header>

						@include('layouts.header',[
							'method'=>'post',
							'url'=> '/admin/categories',

						]);

					</header>


			@if($vista=="1")

				<section class="big" style="margin-top: -20px;">

							<div class="carousel">
							  <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
								<ol class="carousel-indicators">
								  <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
								  <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
								  <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
								</ol>
								<div class="carousel-inner">
								  <div class="carousel-item active">
									<a href="/"><img src="/imagesWebsite/musico-g.jpg" class="d-block w-100 img-fluid" alt="... " ></a>
									<div class="carousel-caption d-none d-md-block">
									  <h5>First slide label</h5>
									  <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
									</div>
								  </div>
								  <div class="carousel-item">
									<a href="/"><img src="/imagesWebsite/canciones-tocar-guitarra.jpg" class="d-block w-100 img-fluid" alt="..."></a>
									<div class="carousel-caption d-none d-md-block">
									  <h5>Second slide label</h5>
									  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
									</div>
								  </div>
								  <div class="carousel-item">
									<a href="/"><img src="/imagesWebsite/tocar-guitarra.jpg" class="d-block w-100 img-fluid" alt="..."></a>
									<div class="carousel-caption d-none d-md-block">
									  <h5>Third slide label</h5>
									  <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
									</div>
								  </div>
								</div>
								<a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
								  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
								  <span class="sr-only">Previous</span>
								</a>
								<a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
								  <span class="carousel-control-next-icon" aria-hidden="true"></span>
								  <span class="sr-only">Next</span>
								</a>
							  </div>
							</div>

				</section>

			@endif

						<section class="articulos" style="padding-left: 20px;">

								<div class="row">

									<div class="col-md-2 col-sm-0">
										<!-- esto es el ASAID -->
										<section>

											<nav class="nav flex-column d-none d-sm-block " style="padding-top: 50px;">

										      {{-- <h5 class="ml-2">{{$categories[1]-> name}}{{$categories-> count()}}</h5> --}}
													<h4 class="ml-2">Categorias</h4>
										      @foreach ($categories as $category)

											      <div class="categoria ">
												      <h5>  <a class="nav-link active" href="/gh/{{$category->id}}">{{$category->name}}</a> </h5>
											      </div>


										        @foreach ($subcategories as $subcategory)
										          @if($subcategory->category_id == $category->id)
										            <div class="subcategoria">
										              <a class="nav-link active" href="/gh/{{$subcategory->id}}">{{$subcategory->name}}</a>
										            </div>
										          @else

										          @endif




										        @endforeach

										      @endforeach



										  </nav>

										</section>
										<!-- esto es el ASAID -->

									</div>



									<div class="col-md-10 col-sm-12" style="margin-right=0px;">

										@yield('content')

									</div>

								</div>


					</section>


					<!-- COMIENZO FOOTER -->
					<footer>
					  <section class="container-fluid">
					  <div class="row footer-l1">
					      <div class="col-12 col-md-4">
					        <a href="/faq"><h5>Preguntas frecuentes!</h5></a>
					      </div>
					      <div class="col-12 col-md-4">
					        <a href="/"><img src={{asset("imagesWebsite/logo.png")}} alt="">  </a>
					      </div>
					      <div class="col-12 col-md-4">
					      <a href="/">  <h5>Contactanos</h5></a>
					      </div>

					  </div>

					  <div class="row footer-l2">
					    <div class="col-12 col-md-4 seguinos">

					      <div class="row">
					        <h6>Seguinos</h6>
					      <!-- </div>
					      <div class="row"> -->
					        <div class="redes">
					          <a href="http://www.facebook.com"><img src="/imagesWebsite/icons8-facebook-old-26.png" alt=""></a>
					          <a href="http://instagram.com"><img src="/imagesWebsite/icons8-instagram-50.png" alt=""></a>
					          <a href="http://twitter.com"><img src="/imagesWebsite/icons8-twitter-24.png" alt=""></a>

					        </div>

					      </div>

					    </div>
					    <div class="col-12 col-md-4 trabaja">
					      <a href="/"> <h5>Music life</h5></a>
					    </div>

					    <div class="col-12 col-md-4 contactanos">
					      <a href="/"><h5>+54 11 5263-7400</h5></a>
					    </div>

							<button onclick="topFunction()" id="myBtn" title="Go to top"><i class="fa fa-angle-up"></i></button>
					  </div>

					  </section>
					<!-- FINAL DEL FOOTER -->


					<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
					<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
					<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
					<script src="/js/boton.js"></script>

					{{-- </div> --}}
					</body>
					</html>
