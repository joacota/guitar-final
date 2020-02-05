<div class="container-fluid">
    <h2>{{$title}}</h2>
  <form action="{{ url($url) }}"  method="post" enctype="multipart/form-data">
    @csrf

    @method($method)

    <div class="row">


      <div class="col-sm-6 datos_columnas">
        <div class="row">
          <h3>Metodos de Pago</h3>
        </div>

        <div class="row">
          <select name="paymentmethod" class="form-control" class="opciones">
              @foreach ($paymentmethods as $paymentmethod)
                <option>{{$paymentmethod->id . " " . $paymentmethod->name }}  </option>

              @endforeach

          </select>
        </div>

      </div>

      <div class="col-sm-6">

        <div class="row">
          <h2>Datos de la compra</h2>
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

    <div class="row">
      <div class="col-md-3 form-control-label boton_editar">

          <button  class="btn btn-dark">Comprar</button>


      </div>

      <div class="col-md-3 " >
        <p><a href="/cart">Cancelar</a></p>
      </div>

    </div>

  </form>
</div>
