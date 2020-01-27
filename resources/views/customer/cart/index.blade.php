@extends('layouts.generaladmin')


@section('content')

<section>
<div class="container">
  <div class="row">
    <div class="col-lg-12">
    <h3>Lista de Productos del carrito</h3>

    <div class="table-responsive">
      <table class="table table-bordered">
  <thead>
    <tr class="bg-secondary">
      <th scope="col">id</th>
      <th scope="col">id del Producto</th>
      <th scope="col">Nombre del Producto</th>
      <th scope="col">Foto</th>
      <th scope="col">Descripcion</th>
      <th scope="col">Precio unit.</th>
      <th scope="col">Cantidad</th>
      <th scope="col">SubTotal</th>
    </tr>
  </thead>
  <tbody>



      @foreach ($cartProducts as $key => $cartProduct)
{{-- //admin/categories/{id}/edit --}}

<tr class="cartProducts">
  <th scope="row">{{$key+1}}</th>
  <th>{{$cartProduct['producto']->id}}</th>
  <td> <b> {{$cartProduct['producto']->name}}</b> </td>
  <td><img src="{{url( $cartProduct['producto']->productpicture->count()>0 ? 'storage/' . $cartProduct['producto']->productpicture[0]->src : 'storage/imagesProducts/musicgeneric.jpg')}}" alt="" width="60px" height="60px"> </td>
  <td> {{$cartProduct['producto']->description}} </td>
  <td> $ {{$cartProduct['producto']->price}} </td>
  <td> {{$cartProduct['cantidad']}} </td>
  <td> {{$cartProduct['producto']->price*$cartProduct['cantidad']}} </td>
</tr>
@endforeach
</tbody>
</table>


</div>
</div>
</div>
</div>


</section>





@stop
