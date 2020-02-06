@extends('layouts.generaladmin')


@section('content')

<section>
<div class="container-fluid">
  <form action="#"  method="post" enctype="multipart/form-data">
{{-- //<form action="{{ url($url) }}"  method="post" enctype="multipart/form-data"> --}}

{{--
    @csrf

    @method($method) --}}

<div class="row">
  <h3>{{$title}}</h3>

</div>

  <div class="row">
    <div class="col-lg-12">


    <div class="table-responsive">
      <table class="table table-bordered">
        <thead>
          <tr class="bg-secondary">
            <th scope="col">id</th>
            <th scope="col">Nº Art.</th>
            <th scope="col">Foto</th>
            <th scope="col">Cat</th>
            <th scope="col">Sub Cat</th>
            <th scope="col">Nombre</th>
            <th scope="col">Descripcion</th>
            <th scope="col">Especificacion.</th>
            <th scope="col">Caractristicas.</th>
            <th scope="col">Precio</th>
            <th scope="col">Oferta</th>
            {{-- <th scope="col">Ver</th> --}}
            <th scope="col">Editar</th>
            <th scope="col">Eliminar</th>
          </tr>
        </thead>

        <tbody>

          @foreach ($products as $key => $product)

            <tr class="products">
              <th scope="row">{{$key+1}}</th>
              <th>{{$product->id}}</th>
              <td><img src="{{url('storage/imagesProducts/musicgeneric.jpg')}}" alt="" width="60px" height="60px"> </td>
              <td> <b> {{$product->category_id}}</b> </td>
              <td> {{$product->category->name}} </td>
              <td> <b> {{$product->name}}</b> </td>
              <td> {{$product->description}} </td>
              <td> {{$product->specifications}} </td>
              <td> {{$product->characteristics}} </td>
              <td> $ {{number_format($product->price,2)}} </td>
              <td> {{$product->offer_id? $product->offer->name : ' '}} </td>
              {{-- <td> <a href="/cartp/{{$product->id}}"> <img src="/imagesWebsite/ver.png" alt="" width="20px" height="20px"> </a>  </td> --}}
              <td> <a href="/admin/products/{{$product->id}}/edit"> <img src="/imagesWebsite/editar.png" alt="" width="20px" height="20px">  </a>  </td>
              <td> <a href="/admin/products/{{$product->id}}/delete"> <img src="/imagesWebsite/delete.png" alt="" width="20px" height="20px">  </a>  </td>

            </tr>
          @endforeach


        </tbody>

      </table>
      <div class="row">
            {{ $products->links() }}
      </div>
    </div>
  </div>
</div>



<div class="row">
  <div class="col-2">
    <button type="submit" name="button" class="btn btn-primary">Comprar</button>
  </div>
  <div class="col-9">
    {{-- <button type="button" name="button" class="btn btn-primary">Comprar</button> --}}
  </div>
  <div class="col-1">
    <button type="button" name="button" class="btn btn-dark">Volver</button>
  </div>

</div>


</form>
</div>



</section>





@stop
