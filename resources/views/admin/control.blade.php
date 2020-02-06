@extends('layouts.generaladmin')

@section('content')


<div class="row">
  <h5>PRoductos</h5>
</div>
<div class="row">
  <h4>
    <a href="/admin/products">lista de producto</a></h5>
</div>
<div class="row">
  <h4>
    <a href="/admin/products/add">Nuevo de producto</a></h5>
</div>

<div class="row">
  <h5>----------------</h5>
</div>
<div class="row">
  <h5>Categorias</h5>
</div>
<div class="row">
  <h4>
    <a href="/admin/categories">lista de Categorias</a></h5>
</div>
<div class="row">
  <h4>
    <a href="/admin/categories/add">Nuevo de Categoria</a></h5>
</div>

<div class="row">
  <h5>----------------</h5>
</div>
<div class="row">
<h5>Marcas</h5>
</div>
<div class="row">
<h4>
  <a href="/admin/brands">lista de Marcaa</a></h5>
</div>
<div class="row">
<h4>
  <a href="/admin/brands/add">Nuevo de Marca</a></h5>
</div>
<div class="row">
<h4>
  <a href="#">Buscar de Marca (editar/Borrar)</a></h5>
</div>


<div class="row">
  <h5>----------------</h5>
</div>
<div class="row">
<h5>Metodos de pago</h5>
</div>
<div class="row">
<h4>
  <a href="/admin/paymentmethods">lista de Metodos</a></h5>
</div>
<div class="row">
<h4>
  <a href="/admin/paymentmethods/add">Nuevo de Metodo/a></h5>
</div>

@stop
