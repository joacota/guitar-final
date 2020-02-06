<div class="container-fluid formulario-compra">
    <h2>{{$title}}</h2>
  <form action="{{ url($url) }}"  method="post" enctype="multipart/form-data">
    @csrf

    @method($method)

    <div class="row detalle-compra-row">


      <div class="col-sm-5 detalle-compra">
        <div class="row">
          <div class="col-sm-12">
            <h3>Metodos de Pago</h3>
          </div>
        </div>

        <div class="row">

              @if(isset($paymentmethod))

                  <input type="text" name="" value="{{$paymentmethod . " " }} ">
                  {{-- . $paymentmethods[$paymentmethod-1]->name --}}
              @else
                <select name="paymentmethod" class="form-control" class="opciones">
                @foreach ($paymentmethods as $paymentmethod)

                  <option>{{$paymentmethod->id . " " . $paymentmethod->name }}  </option>

                  @endforeach
                  </select>
              @endif

          </div>
      </div>



      <div class="col-sm-5 detalle-compra offset-sm-2">

        <div class="row">
          <div class="col-sm-12">
            <h3>Datos de la compra</h3>
          </div>
        </div>
        <div class="row">
          <h3>Total de la compra: $ {{$totalPurchase!=0 ? number_format($totalPurchase,2) : number_format($totalCart,2)}}</h3>
        </div>
        <div class="row">
          <h3>IVA 21% : $ {{$totalPurchase!=0 ? number_format($totalPurchase*0.21,2) : number_format($totalCart*0.21,2) }}</h3>
        </div>
        <div class="row">
          <h3>Total a pagar : $ {{$totalPurchase!=0 ? number_format($totalPurchase*1.21,2) : number_format($totalCart*1.21,2)}}</h3>
        </div>
      </div>
    </div>

    </div>

    <div class="row">
      <div class="col-md-3 form-control-label boton_editar">
        @if($url!='/')
          <button  class="btn btn-dark">Comprar</button>

        @endif

      </div>

      <div class="col-md-3 offset-md-6" style="text-align:right;" >
        @if($url!='/')

        <p><a class="btn btn-danger cancelar" href="/cart">Cancelar</a></p>
        @else
        <p><a class="btn btn-danger cancelar" href="/">Volver al Inicio</a></p>
        @endif

      </div>

    </div>

  </form>
</div>
