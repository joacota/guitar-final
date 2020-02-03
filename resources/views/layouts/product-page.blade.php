
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
  <title>Producto</title>

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" href={{asset("css/product-page.css")}}>
  <link rel="stylesheet" href="css/header-footer.css">
</head>


<body>

<!-- COMIENZO DEL HEADER -->
<header>
	@include('layouts.header',[
		'method'=>'post',
		'url'=> '/admin/categories',

	]);


</header>
  <!-- FINAL DEL HEADER -->


<!-- SECCION PRINCIPAL DE LA PAGINA -->

<div class="container-fluid">

  <section class="row">

    <div class="category-path">
      <h6>
        <ul>
          <li>
            <a href="#">{{$categories[($cat->category_id)]->name}} |</a>
          </li>

          <li>
            <a href="/gh/{{$cat->id}}">{{$cat->name}} </a>
          </li>

        </ul>
      </h6>
    </div>
  </section>

  <section class="row">
    <!-- <div class="Product-details"> -->

          <div class="col-12 col-md-6">
            <section class="row">

              <div class="col-12">

                <section class="row">
                  <section class="product-photo">

                    <a href="#">
											{{-- validar que tenga fotos --}}
										@if(count($product->productpicture)>0)
                      <img  src="{{Storage::url($product->productpicture[0]->src) }}" alt="">
											{{-- <p>{{'storage/' . substr($product->productpicture[0]->src,7)}} {{asset('storage/' . $product->productpicture[0]->src)}}</p> --}}
										@else
											<img  src="/imagesProducts/logo.jpg" alt="">
										@endif
                    </a>
                  </section>
                </section>
              </div>
              <div class="col-12">
                <section class="row">

                  <section class="product-photos-min">

                      <ul>
												@if(count($product->productpicture)>0)
												@foreach ($product->productpicture as $picture)
													<li>

														<a href="#">
															<img width="50px" height="50px" src="{{Storage::url($picture->src) }}">


														</a>
													</li>


												@endforeach
											@endif

                      </ul>

                  </section>

                </section>

              </div>
            </section>
          </div>

        <div class="col-12 col-md-6">
          <section class="product-info">
            <div class="product-short-description">

              <div class="product-brand">
                    <a href="#"><img src="/imagesProducts/logo-generico.png" alt="product-brand"></a>
              </div>

              <div class="product-name">
                <h1>
                  <p>
                    {{$product->name}}
                  </p>
                </h1>
              </div>

							<div class="product-id">
                  <p>
                    ID:{{$product->id}}
                  </p>

              </div>

              <div class="product-stock">
								@if($product->stock==0)
                    <p>NO HAY STOCK </p>
								@else
									<p>HAY STOCK {{$product->stock}}   </p>

								@endif
								</div>

              <section class="product-tipos-disp">
								@if($product->offert)
									{{$product->offer->factor}}
								@endif


              </section>


							<div class="product-price">
		              @if(isset($product->offer))


											<div class="row">

												<p style="text-decoration: line-through">
													$ {{number_format($product->price,2)}}
												</p>
											</div>

											<div class="row">

												<p>{{$product->offer->name}}</p>
											</div>

											<div class="row">
												<p >
													$ {{number_format($product->price*$product->offer->factor,2)}}
												</p>
											</div>

									@else
											<p class="text-center">
												$ {{number_format($product->price,2)}}
											</p>
									@endif

              </div>

            <div class="product-button-comprar">
              <a href="/cart/{{$product->id}}">Agregar al Carrito</a>
            </div>

            </div>

          </section>
        </div>

        <!-- </div> -->
  </section>

  <section class="row">
        <div class="col">
          <div class="descripcion">
            <h3 class="de1">Descripcion General</h3>
          {{$product->description}}
          </div>

        </div>

  </section>

  <section class="row">
        <div class="col">

          <h3 class="caracteristicas">Caracteristicas</h3>
          {{$product->specification}}

        </div>
        <div class="col">
          <h3 class="especficaciones">Especificaciones</h3>
          {{$product->specifications}}
        </div>
  </section>

  <section class="row titulo-recomendados">
    <h4>Otros Productos Recomendados</h4>
  </section>


  <section class="row recomendados">

				<?php for ($i=0; $i <4 ; $i++) :?>
          <div class="col-12 col-sm-3">

            <div class="card text-center" style="width: 15rem;">
              <img src="imagenes/Metallica-Black-Album.jpg" class="card-img-top" alt="Metallica">
              <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="#" class="btn btn-dark">Comprar</a>
              </div>
            </div>
            </div>
						<?php endfor ?>



  </section>

{{-- @yield('content') --}}


</div>
<!-- FIN SECCION PRINCIPAL DE LA PAGINA -->


<!-- COMIENZO FOOTER -->
<!-- COMIENZO FOOTER -->
<footer>
  <section class="container-fluid">
  <div class="row footer-l1">
      <div class="col-12 col-md-4">
        <a href="Formularios/faq.php"><h5>Preguntas frecuentes!</h5></a>
      </div>
      <div class="col-12 col-md-4">
        <a href="index.php"><img src={{asset("imagesWebsite/logo.png")}} alt="">  </a>
      </div>
      <div class="col-12 col-md-4">
        <a href="Formularios/contacto.php"><h5>Contactanos</h5></a>
      </div>

  </div>

  <div class="row footer-l2">
    <div class="col-12 col-md-4 seguinos">

      <div class="row">
        <h6>Seguinos</h6>
      <!-- </div>
      <div class="row"> -->
        <div class="redes">
          <a href="http://www.facebook.com"><img src="imagenes/iconos/icons8-facebook-old-26.png" alt=""></a>
          <a href="http://instagram.com"><img src="imagenes/iconos/icons8-instagram-50.png" alt=""></a>
          <a href="http://twitter.com"><img src="imagenes/iconos/icons8-twitter-24.png" alt=""></a>

        </div>

      </div>

    </div>
    <div class="col-12 col-md-4 trabaja">
      <a href="#"><h5>Trabaja Con nosotros</h5>  </a>
    </div>

    <div class="col-12 col-md-4 contactanos">
      <a href="#"><h5>+54 11 5263-7400</h5></a>
    </div>


  </div>

  </section>


{{-- @yield('footer') --}}


</footer>
<!-- FINAL DEL FOOTER -->



<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
