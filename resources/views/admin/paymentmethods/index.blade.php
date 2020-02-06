@extends('layouts.generaladmin')


@section('content')

<section>
<div class="container">

    <div class="prductos col-lg-8">
    <h3>Lista de Metodos de Pago</h3>

    {{-- <div class="row">
      <a href="paymentmethods/add" class="btn btn-dark">Agregar metodo de pago</a>

    </div> --}}

    <div class="row">

    <div class="table-responsive">
      <table class="table table-bordered">
        <thead>
          <tr class="bg-secondary">
            <th scope="col">id</th>
            <th scope="col">Nombre</th>
            <th scope="col">Editar</th>
            <th scope="col">Borrar</th>
          </tr>
      </thead>
      <tbody>

            @foreach ($paymentmethods as $paymentmethod)

                <tr class="paymentmethods">
                <th scope="row">{{$paymentmethod->id}}</th>
                <td> <b> {{$paymentmethod->name}}</b> </td>
                <td> <a class="editar" href="/admin/paymentmethods/{{$paymentmethod->id}}/edit"> <b> Ed </b></a> </td>
                <td> <a class="borrar" href="/admin/paymentmethods/{{$paymentmethod->id}}/delete"> <b> - </b></a> </td>
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
