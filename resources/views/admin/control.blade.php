@extends('layouts.generaladmin')

@section('content')


<div class="row">
  <h5>PRoductos</h5>
</div>
<div class="row">
  <h4>
    <a href="/admin/products">lista de producto</a></h4>
</div>
<div class="row">
  <h4>
    <a href="/admin/products/add">Nuevo de producto</a></h4>
</div>

<div class="row">
  <h5>----------------</h5>
</div>
<div class="row">
  <h5>Categorias</h5>
</div>
<div class="row">
  <h4>
    <a href="/admin/categories">lista de Categorias</a></h4>
</div>
<div class="row">
  <h4>
    <a href="/admin/categories/add">Nuevo de Categoria</a></h4>
</div>

<div class="row">
  <h5>----------------</h5>
</div>
<div class="row">
<h5>Marcas</h5>
</div>
<div class="row">
<h4>
  <a href="/admin/brands">lista de Marcaa</a></h4>
</div>
<div class="row">
<h4>
  <a href="/admin/brands/add">Nuevo de Marca</a></h4>
</div>



<div class="row">
  <h5>----------------</h5>
</div>
<div class="row">
<h5>Metodos de pago</h4>
</div>
<div class="row">
<h4>
  <a href="/admin/paymentmethods">lista de Metodos</a></h4>
</div>
<div class="row">
<h4><a href="/admin/paymentmethods/add">Nuevo Metodo de Pago</a></h4>

</div>

@stop
