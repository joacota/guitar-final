@extends('layouts.generaladmin')


@section('content')
        @include('admin.paymentmethods.form',[
          'method'=>'delete',
          'url'=> '/admin/paymentmethods/' . $paymentmethod->id,
        ])

@endsection
