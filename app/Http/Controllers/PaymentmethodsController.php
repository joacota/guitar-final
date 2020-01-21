<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Paymentmethod;

class PaymentmethodsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

      $paymentmethods = Paymentmethod::all();

      return view('admin.paymentmethods.index', [
        'title'=>'listado de Metodos de pago',
        'paymentmethods' => $paymentmethods,
      ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
      $paymentmethods = Paymentmethod::all();

      return view('admin.paymentmethods.create', [
        'title'=>'carga de formas de Pago',
        'paymentmethod'=>new Paymentmethod,
        'paymentmethods'=>$paymentmethods,
      ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      $this->validate($request, [
        'name'=>'required',
      ]);

        $paymentmethod=Paymentmethod::create($request->all());
        return redirect('admin/paymentmethods');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $paymentmethod=Paymentmethod::find($id);
        return view('admin.paymentmethods.create', [
          'title'=>'carga de formas de Pago',
          'paymentmethod'=>new Paymentmethod,
          'paymentmethods'=>$paymentmethods,
        ]);

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
      $paymentmethod=Paymentmethod::find($id);
      return view('admin.paymentmethods.edit', [
        'title'=>'Edicion de formas de Pago',
        'paymentmethod'=>$paymentmethod,
      ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
      $this->validate($request, [
        'name'=>'required',
      ]);

      $paymentmethod=Paymentmethod::find($id);
      $paymentmethod->update($request->all());

      return redirect('admin/paymentmethods/');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
