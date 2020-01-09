
  @extends('layouts.general')

@section('content')

<div class="container">
  <div class="row">
    <div class="col">
      <h1>{{ $title }}</h1>
      @foreach ($products as $product)
      <div class="">
        <a href="/products/{{$product->id}}">{{ $product->name}}</a>
      </div>


      @endforeach
      <bn>
      {{ $products->links() }}
    </div>

  </div>
</div>
@stop

@section('ofertas')

<section class="ofertas">
  <div class="row">
  <h1>Ofertas</h1>
  </div>
  <div class="row">

    <?php for ($i=0; $i <4 ; $i++) :?>

  <article class="col-12 col-md-6 col-xl-3">
      <div class="card text-center" >
          <a href="product-page1.php">
            <img src="imagesProducts/guitarra.jpg" class="card-img-top" alt="...">
          </a>
          <div class="card-body">
          <h5 class="card-title">{{ $products[$i]->name}}</h5>
          {{-- <p class="card-text desc">{{ $products[$i]->description}}</p> --}}
          <p class="card-text desc">{{(strlen($products[$i]->description) > 80) ? substr($products[$i]->description,0,77).'...' : $products[$i]->description}}</p>
          <p class="card-text">{{'$'}} {{ $products[$i]->price}}</p>
          <a href="#" class="btn btn-dark">Comprar!</a>
          </div>
      </div>
{{-- (strlen($string) > 13) ? substr($string,0,10).'...' : $string; --}}
  </article>

    <?php endfor ?>


  </div>
</section>
@stop


@section('aside')

  <nav class="nav flex-column d-none d-sm-block " style="padding-top: 50px;">
      <h5 class="ml-2">{{$categories[1]-> name}}{{$categories-> count()}}</h5>

      @foreach ($categories as $category)
      <div class="">
        <a class="nav-link active" href="/gh/{{$category->id}}">{{ $category->name}}</a>
      </div>



        @foreach ($categories as $category1)


        @endforeach

      @endforeach






      {{-- // <a class="nav-link active" href="section.php">Rock Nacional</a>
      // <a class="nav-link" href="section.php">Funk</a>
      // <a class="nav-link" href="section.php">Clasicos de los 80</a>
      // <h5>Audio</h5>
      // <a class="nav-link active" href="section.php">Auriculares</a>
      // <a class="nav-link active" href="section.php">Parlantes</a>
      // <h5>Instrumentos</h5>
      // <a class="nav-link active" href="section.php">Guitarras</a>
      // <a class="nav-link active" href="section.php">Baterias</a>
      // <a class="nav-link active" href="section.php">Pianos</a> --}}
  </nav>

@stop
