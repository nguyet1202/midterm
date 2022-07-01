<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;

class PageController extends Controller
{
    public function getAdd(){
        return view('formAdd');
    }
    public function getIndex()
    {
        $products = Product::where('typeProduct','Hoa quả')->paginate(4);
        $products1 = Product::where('typeProduct','thực phẩm khô')->paginate(4);
        $products2 = Product::where('typeProduct','rau hữu cơ')->paginate(4);										
        return view('page', compact('products','products1','products2'));
    }
    // public function getIndexForm(){
    //     $products = product ::all();
    //     return view('page', compact('products')); 
    // }
    public function postAdminAdd (Request $request) {
        $product = new Product();
        if ($request->hasFile('inputImage')) {
            $file = $request->file('inputImage');
            $fileName = $file->getClientOriginalName('inputImage');
            $file->move('assets/images/products', $fileName);
        }
        $file_name=null;
        if($request->file('inputImage') !=null){
            $file_name = $request->file('inputImage') ->getClientOriginalName();
        }

        $product->nameProduct = $request->inputName;
        $product->image = $file_name;
        $product->describe=$request->inputDescription;
        $product->unit_price = $request->inputPrice;
        $product->promotion_price = $request->inputPromotionPrice;
        $product->typeProduct=$request->inputType;
        $product->save();
        return $this -> getIndex();
    }
}
