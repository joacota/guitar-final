<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Category;

class CategoriesController extends Controller
{
  public function manageCategory()
      {
          $categories = Category::whereNull('category_id')->get();

          $allCategories = Category::all();

          return view('category.categoryTreeview',compact('categories','allCategories'));
      }


      /**
       * Show the application dashboard.
       *
       * @return \Illuminate\Http\Response
       */

      public function addCategory(Request $request)
      {
          $this->validate($request, [
              'title' => 'required',
          ]);

          $input = $request->all();
          $input['parent_id'] = empty($input['parent_id']) ? 0 : $input['parent_id'];

          Category::create($input);
          return back()->with('success', 'New Category added successfully.');

      }

}
