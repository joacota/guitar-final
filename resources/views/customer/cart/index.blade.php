@extends('layouts.generalCarro')


@section('content')

<section>
<div class="container">
  <form action="#"  method="post" enctype="multipart/form-data">
{{-- //<form action="{{ url($url) }}"  method="post" enctype="multipart/form-data"> --}}

{{--
    @csrf

    @method($method) --}}

<div class="row">
  <h3>Lista de Productos del carrito</h3>

</div>

  <div class="row">
    <div class="col-2">
      {{-- <button type="button" name="button" class="btn btn-primary">Comprar</button> --}}

    </div>
    <div class="col-9">
      {{-- <button type="button" name="button" class="btn btn-primary">Comprar</button> --}}
    </div>
    {{-- <div class="col-1">
      <button type="button" name="button" class="btn btn-dark">Volver</button>
    </div> --}}

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
      <th scope="col">Articulo</th>
      <th scope="col">Descripcion</th>
      <th scope="col">Precio unit.</th>
      <th scope="col">Cant.</th>
      <th scope="col">SubTotal</th>
      <th scope="col">Agregar</th>
      <th scope="col">Restar</th>
      <th scope="col">Eliminar</th>
    </tr>
  </thead>
  <tbody>



      @foreach ($cartProducts as $key => $cartProduct)
{{-- //admin/categories/{id}/edit --}}

<tr class="cartProducts">
  <th scope="row">{{$key+1}}</th>
  <th>{{$cartProduct['producto']->id}}</th>
  <td><img src="{{url( $cartProduct['producto']->productpicture->count()>0 ? 'storage/' . $cartProduct['producto']->productpicture[0]->src : 'storage/imagesProducts/musicgeneric.jpg')}}" alt="" width="60px" height="60px"> </td>
  <td> <b> {{$cartProduct['producto']->name}}</b> </td>
  <td> {{$cartProduct['producto']->description}} </td>
  <td> $ {{$cartProduct['producto']->price}} </td>
  <td> {{$cartProduct['cantidad']}} </td>
  <td> $ {{$cartProduct['producto']->price*$cartProduct['cantidad']}} </td>
  <td> <a href="/cartp/{{$cartProduct['producto']->id}}"> <img src="imagesWebsite/plus.png" alt="" width="20px" height="20px"> </a>  </td>
  <td> <a href="/cartm/{{$cartProduct['producto']->id}}"> <img src="imagesWebsite/minus.png" alt="" width="20px" height="20px">  </a>  </td>
  <td> <a href="/cartt/{{$cartProduct['producto']->id}}"> <img src="imagesWebsite/delete.png" alt="" width="20px" height="20px">  </a>  </td>

</tr>
@endforeach


</tbody>

</table>
</div>



</div>
</div>

<div class="row">
    <div class="col-7">
      <p></p>
    </div>
    <div class="col-3">
      <p>Total a pagar: $ {{$totalCart}} + IVA </p>
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
