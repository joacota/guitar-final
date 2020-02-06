@extends('layouts.generalCarro')

@section('content')


        @include('customer.cart.form',[
          'method'=>'get',
          'url'=> '/purchases',
        ])

@endsection
