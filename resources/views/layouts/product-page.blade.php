
@php
	$usuarioNombre="perfil";
	$formCarrito="";
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


						<div class="container-fluid">
								<!-- esto es el header -->
								<nav class="navbar navbar-expand-lg navbar-light bg-light">
							{{-- <a class="navbar-brand" href="index.php"><img  width= "110px"src="public/photosBrands/logo.png" alt=""></a> --}}
							<a class="navbar-brand" href="/"><img  width= "110px" src={{asset("imagesWebsite/logo.png")}} alt=""></a>


							<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>

							<div class="collapse navbar-collapse" id="navbarSupportedContent">
								<ul class="navbar-nav mr-auto">

										@foreach ($categories as $category)

									 		<li class="nav-item dropdown">

												<a class="nav-link dropdown-toggle categoria" href="/gh/{{$category->id}}" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
													{{$category->name}}{{$category->category_id}}
												</a>

	 										<div class="dropdown-menu" aria-labelledby="navbarDropdown">

										 	 	@foreach ($subcategories as $subcategory)


											 		 @if($subcategory->category_id == $category->id)
														 <a class="dropdown-item" href="/gh/{{$subcategory->id}}">
															 {{$subcategory->name}}
														</a>
											 		 @endif

										 	 	@endforeach

									 		</div>

									 		</li>
									  @endforeach

									</ul>


								<div class="menu-derecha navbar-nav mr-1">


									<?php if($usuarioNombre == "perfil"):?>
												<a href="Formularios/registro.php" class="btn btn-outline-secondary btn-sm mr-2"> registrate</a>
												<a href="Formularios/login.php" class="btn btn-outline-secondary btn-sm mr-2"> log in</a>
										<?php else: ?>
											<a href="<?= $formPerfil ?>" class="btn btn-outline-secondary btn-sm mr-2"> <?= $usuarioNombre ?></a>
											<a href="index.php?log=0" class="btn btn-outline-secondary btn-sm mr-2"> log out</a>
									<?php  endif; ?>

									<a class="btn btn-outline-secondary btn-sm "href="<?= $formCarrito ?>"><img src="https://img.icons8.com/windows/26/000000/shopping-cart.png"></a>

								</div>
							</div>
						</nav>



							<!-- final del header -->

						</div>
</header>
  <!-- FINAL DEL HEADER -->


<!-- SECCION PRINCIPAL DE LA PAGINA -->

<div class="container-fluid">

  <section class="row">

    <div class="category-path">
      <h6>
        <ul>
          <li>
            <a href="#">{{$categories[($cat->category_id)-1]->name}} |</a>
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
                      <img  src="{{url( 'storage/' . $product->productpicture[0]->src)}}" alt="">
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
												@foreach ($product->productpicture as $picture)
													<li>

														<a href="#">
															<img  src="{{url( 'storage/' . $picture->src)}}" alt="">


														</a>
													</li>


												@endforeach


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

                  <ul>
                    <li>
                      <a href="#">
                        {{-- <img  src="/imagesProducts/" . {{$product->product_photo->src}} alt=""> --}}
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <img  src="/imagesProducts/guitarranegra.jpg" alt="">
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <img  src="/imagesProducts/guitarra.jpg" alt="">
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <img  src="/imagesProducts/guitarranegra.jpg" alt="">
                      </a>
                    </li>

                  </ul>

              </section>


              <div class="product-price">
                <p>
                  $ {{$product->price}}
                </p>

              </div>


            <div class="product-button-comprar">
              <a href="carrito.php">COMPRAR</a>
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

@yield('content')


</div>
<!-- FIN SECCION PRINCIPAL DE LA PAGINA -->


<!-- COMIENZO FOOTER -->
<footer>

@include('/layouts/footer')



</footer>
<!-- FINAL DEL FOOTER -->



<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
