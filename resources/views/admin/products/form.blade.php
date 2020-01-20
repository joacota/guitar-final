




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
                <p class="text-danger">{{ $errors->first('category')}}</p>
                </div>

                <div class="col-md-2">

                  <input
                  class="form-control"
                  name="category_id"
                  type="number"
                  value="{{ old('category_id', $product->category_id)}}"
                  placeholder="x">

                </div>

                <div class="col-md-2 ">
                <label class="form-control-label">
                  Brands (un)
                </label>
                <p class="text-danger">{{ $errors->first('brand_id')}}</p>
                </div>

                <div class="col-md-2">

                   {{-- <input
                  class="form-control"
                  name="brand_id"
                  type="number"
                  value="{{ old('brand_id', $product->brand_id)}}"
                  placeholder="x"   >  --}}

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


            <div class="col-md-6 form-control-valign">
                <div class="row">
                  <div class="foto">

                    @if(count($product->productpicture)>0)
                      <img  src="{{url( 'storage/' . $product->productpicture[0]->src)}}" alt="">
                      {{-- <p>{{'storage/' . substr($product->productpicture[0]->src,7)}} {{asset('storage/' . $product->productpicture[0]->src)}}</p> --}}
                    @else
                      <img src="/imagesProducts/musicgeneric.jpg" alt="picture">
                    @endif

                  </div>
                </div>
                <div class="row">
                  <div class="form-control-valign">

                        <input type="file" name="picture1">
                        <!-- <input type="submit" value="Upload Image" name="submit"> -->

                  </div>
                </div>

            </div>

            <div class="col-md-6 form-control-valign">
                <div class="row">
                  <div class="foto">
                    @if(count($product->productpicture)>1)
                      <img  src="{{url( 'storage/' . $product->productpicture[1]->src)}}" alt="">
                      {{-- <p>{{'storage/' . substr($product->productpicture[0]->src,7)}} {{asset('storage/' . $product->productpicture[0]->src)}}</p> --}}
                    @else
                      <img src="/imagesProducts/musicgeneric.jpg" alt="picture">
                    @endif

                  </div>
                </div>
                <div class="row">
                  <div class="form-control-valign">

                        <input type="file" name="picture2">
                        <!-- <input type="submit" value="Upload Image" name="submit"> -->

                  </div>
                </div>

            </div>

          </div>


          <div class="row" style="margin-top:30px;">


            <div class="col-md-6 form-control-valign">
                <div class="row">
                  <div class="foto">
                    @if(count($product->productpicture)>2)
                      <img  src="{{url( 'storage/' . $product->productpicture[2]->src)}}" alt="">
                      {{-- <p>{{'storage/' . substr($product->productpicture[0]->src,7)}} {{asset('storage/' . $product->productpicture[0]->src)}}</p> --}}
                    @else
                      <img src="/imagesProducts/musicgeneric.jpg" alt="picture">
                    @endif

                  </div>
                </div>
                <div class="row">
                  <div class="form-control-valign">

                        <input type="file" name="picture3">
                        <!-- <input type="submit" value="Upload Image" name="submit"> -->

                  </div>
                </div>

            </div>

            <div class="col-md-6 form-control-valign">
                <div class="row">
                  <div class="foto">
                    @if(count($product->productpicture)>3)
                      <img  src="{{url( 'storage/' . $product->productpicture[3]->src)}}" alt="">
                      {{-- <p>{{'storage/' . substr($product->productpicture[0]->src,7)}} {{asset('storage/' . $product->productpicture[0]->src)}}</p> --}}
                    @else
                      <img src="/imagesProducts/musicgeneric.jpg" alt="picture">
                    @endif


                  </div>
                </div>
                <div class="row">
                  <div class="form-control-valign">

                        <input type="file" name="picture4">
                        <!-- <input type="submit" value="Upload Image" name="submit"> -->

                  </div>
                </div>

            </div>


          </div>

          <div class="row">

          </div>

          <div class="form-group row" style="margin-top:70px;">

            <div class="col-md-9 form-control-label boton_editar">
              <button  class="btn btn-dark">Grabar</button>
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
