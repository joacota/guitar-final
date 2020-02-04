

  <div class="container-fluid">

    {{-- <div id="content-wrapper"> --}}

        <section class="row">

          <h3> Carga de Producto </h3>
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
                  value="{{ old('name', $product->name)}}">
                </div>
                <p class="text-danger">{{ $errors->first('name')}}</p>
                {{-- <div class="col-md-6 form-control-comment">

                </div> --}}
              </div>

              <div class="form-group row ">
                <label class="col-md-2 form-control-label required">
                  Descripcion
                </label>

                <div class="col-md-6">
                  <textarea class="description form-control" rows="5" cols="46" name="description">{{ old('descrption', $product->description)}}</textarea>
                </div>
                <p class="text-danger">{{ $errors->first('description')}}</p>
                {{-- <div class="col-md-6 form-control-comment">

                </div> --}}
              </div>

              <div class="form-group row ">
                <label class="col-md-2 form-control-label required">
                  Especificaciones
                </label>

                <div class="col-md-6">

                  <textarea class="Specifications form-control" name="specifications" rows="5" cols="46">{{ old('specifications', $product->specifications)}}</textarea>

                </div>
                <p class="text-danger">{{ $errors->first('specifications')}}</p>
                {{-- <div class="col-md-6 form-control-comment">

                </div> --}}
              </div>


              <div class="form-group row ">
                <label class="col-md-2 form-control-label required">
                  Caracteristicas
                </label>

                <div class="col-md-6">

                  <textarea class="characteristics form-control" name="characteristics" rows="4" cols="46">{{old('characteristics',' $product->characteristics')}}</textarea>

                </div>

                {{-- <div class="col-md-6 form-control-comment">

                </div> --}}
              </div>


              <div class="form-group row ">
                <div class="col-md-2">
                  <label class="form-control-label">
                    Price (ARS)
                  </label>
                  <p class="text-danger">{{ $errors->first('price')}}</p>
                </div>



                <div class="col-md-2">

                  <input
                  class="form-control"
                  name="price"
                  type="number"
                  value="{{ old('price', $product->price)}}"
                  placeholder="xxxxxx.xx"   >

                </div>

                {{-- <div class="col-md-3 form-control-comment">

                </div> --}}
                <div class="col-md-2">
                  <label class="form-control-label">
                    Stock (un)
                  </label>
                  <p class="text-danger">{{ $errors->first('stock')}}</p>
                  </div>

                <div class="col-md-2">

                  <input
                  class="form-control"
                  name="stock"
                  type="number"
                  value="{{ old('stock', $product->stock)}}"
                  placeholder="xxxxxx.xx">

                </div>


                </div>

              <div class="form-group row ">
                <div class="col-md-2 ">

                <label class="form-control-label">
                  Category (un)
                </label>
                <p class="text-danger">{{ $errors->first('category_id')}}</p>
                </div>

                <div class="col-md-2">

                  <input
                  class="form-control"
                  name="category_id"
                  type="number"
                  value="{{ old('category_id', $product->category_id)}}"
                  placeholder="x">

                </div>

                <div class="col-md-2">
                  <label class="form-control-label">
                    Brands (un)
                  </label>
                  <p class="text-danger">{{ $errors->first('brand_id')}}</p>
                </div>

                <div class="col-md-2">

                  <select name="brand_id" class="form-control">
                      @foreach ($brands as $brand)
                        <option>{{$brand->id . " " . $brand->name }}  </option>

                      @endforeach

                  </select>



                </div>








              </div>

              <div class="form-group row ">

              </div>


        </section>

        <section class="col 12 col-md-6">

          <div class="row" style="margin-top:30px;">

            <p>{{ $errors->first('picture') }}</p>


              {{-- @foreach ($product->productpicture as $key =>$photo) --}}

                @for ($i=0; $i < 4; $i++)

                {{-- $photo=$product->productpicture --}}

                  <div class="col-md-6 form-control-valign">
                      <div class="row">
                        <div class="foto">
                            <img width="150px" height="150px" src="{{ isset($photo[$i]->src) ? Storage::url($photo[$i]->src) : '/imagesProducts/musicgeneric.jpg' }}">
                        </div>
                      </div>
                      <div class="row">
                        <div class="form-control-valign">
                          <input type="file" name="picture[{{ isset($photo[$i]->id) ? $photo[$i]->id : ''}}]">
                        </div>
                      </div>
                  </div>
                @endfor
              {{-- @endforeach --}}




          </div>



          <div class="row">

          </div>

          <div class="form-group row" style="margin-top:70px;">

            <div class="col-md-6 form-control-label boton_editar">
              @if($method=='patch' || $method=='post')
                <button  class="btn btn-dark">Grabar</button>
              @endif

            </div>

            <div class="col-md-3 form-control-label boton_editar">
              @if($method=='delete')
                <button  class="btn btn-dark">Eliminar</button>
              @endif
            </div>

            <div class="col-md-3 " >
              <p><a href="/">Volver a Home!</a></p>
            </div>

          </div>


        </section>





      </form>

      </section>

    {{-- </div> --}}
  </div>
