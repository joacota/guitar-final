
@extends('layouts.generalCarro')
termino la compra

@section('content')


        @include('customer.purchases.form',[
          'method'=>'get',
          'url'=> '/',
        ])

@endsection
