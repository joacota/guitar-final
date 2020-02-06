@extends('customer.layouts.general')

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
      <div class="col-md-12">
        <h1>Ofertas</h1>
      </div>

    </div>

    <div class="row">

      <?php for ($i=0; $i <8 ; $i++) :?>

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

    <?php
      function arboldeCategorias($parent = 0, $spacing = '', $user_tree_array = '')
      {
        // include 'conexion.php';
        if (!is_array($user_tree_array))
        $user_tree_array = array();

        // $sql = "SELECT `id_categoria`, `nombre`, `id_padre` FROM `categorias` WHERE 1 AND `id_padre` = $parent ORDER BY id_categoria ASC";
        // $query = $connection->prepare($sql);
        // $query->execute();


        $total = $categories->Count();

        if ($total > 0)
        {
          while ($row = $categories->fetch(PDO::FETCH_OBJ))
          {
            $user_tree_array[] = array("id" => $row->category_id, "name" => $spacing . $row->name);
            $user_tree_array = arboldeCategorias($row->id_categoria, $spacing . '&nbsp;&nbsp;', $user_tree_array);
          }
        }
        return $user_tree_array;
      }
      ?>

</nav>

@stop
