<div class="container-fluid">

      <section class="row">

          <h3> {{$title}} </h3>
          <br>
          <br>
      </section>

      <form action="{{ url($url) }}"  method="post" enctype="multipart/form-data">

        @csrf

        @method($method)

      <section class="row">

      <section class="col-12 col-md-6">

            <div class="form-group row ">
              <label class="col-md-2 form-control-label required">
                Nombre
              </label>

              <div class="col-md-6">
                <input
                class="form-control"
                name="name"
                type="text"
                value="{{ old('name', $paymentmethod->name)}}">
              </div>
              <p class="text-danger">{{ $errors->first('name')}}</p>
              {{-- <div class="col-md-6 form-control-comment">

              </div> --}}
            </div>



            <div class="form-group row" style="margin-top:70px;">

              <div class="col-md-6 form-control-label boton_editar">
                <button  class="btn btn-dark">Grabar</button>
              </div>

              <div class="col-md-3 " >
                <p><a href="/">Volver a Home!</a></p>
              </div>

            </div>


          </section>
