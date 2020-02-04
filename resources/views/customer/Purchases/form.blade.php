<div class="container-fluid formulario-compra">
    <h2>{{$title}}</h2>
  <form action="{{ url($url) }}"  method="post" enctype="multipart/form-data">
    @csrf

    @method($method)

    <div class="row detalle-compra-row">


      <div class="col-sm-5 detalle-compra">
        <div class="row">
          <div class="col-sm-12">
            <h3>Seleccione el metodos de Pago</h3>
          </div>
        </div>

        <div class="row">
          <div class="col-sm-6">

            <select name="paymentmethod" class="form-control" class="opciones">
                @foreach ($paymentmethods as $brandpaymentmethod)
                  <option>{{$brandpaymentmethod->id . " " . $brandpaymentmethod->name }}  </option>

                @endforeach

            </select>
          </div>
        </div>

      </div>

      <div class="col-sm-5 detalle-compra offset-sm-2">

        <div class="row">
          <div class="col-sm-12">
            <h3>Datos de la compra</h3>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-12">
            <h4>Total de la compra: $ {{number_format($totalCart,2)}}</h4>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-12">
            <h4>IVA 21% : $ {{number_format($totalCart*0.21,2)}}</h4>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-12">
            <h4 class="total">Total a pagar : $ {{number_format($totalCart*1.21,2)}}</h4>
          </div>
        </div>
      </div>

    </div>

    <div class="row">
      <div class="col-md-3 form-control-label boton_editar">

          <button  class="btn btn-dark">Comprar</button>


      </div>

      <div class="col-md-3 offset-md-6" style="text-align:right;" >
        <p><a class="btn btn-danger cancelar" href="/cart">Cancelar</a></p>
      </div>

    </div>

  </form>
</div>
