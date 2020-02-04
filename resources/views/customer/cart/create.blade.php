@extends('layouts.generalCarro')

@section('content')


        @include('customer.cart.form',[
          'method'=>'post',
          'url'=> '/purchases',
        ])

@endsection
