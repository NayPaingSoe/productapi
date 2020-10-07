<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\ProductRequest;
use Symfony\Component\HttpFoundation\Response;
use App\Http\Resources\Product\ProductResource;
use App\Http\Resources\Product\ProductCollection;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
   
    public function __construct()
{
    $this->middleware('auth:api')->except('index','show');
}
    public function index()
    {
        return ProductCollection::collection(Product::paginate(8));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProductRequest $request)
    {
        $product=\App\Models\Product::create([
            'name'=>$request->name,
            'detail'=>$request->description,
            'price'=>$request->price,
            'stock'=>$request->stock,
            'discount'=>$request->discount,
            'user_id'=>$request->user_id
        ]);
        return response([
            'data'=>new ProductResource($product)
        ],Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        return  new ProductResource($product);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product)
    {
        //return $request->description;
        $authid=Auth::id();
        $pid=$product->id;
        if($this->belongToUser($authid,$pid)){
            if($request->description){
                $request['detail']=$request->description;
                unset($request['description']);

            }
            else{
                $request['detail']=$product->detail;

            }
            $product->update($request->all());
            return response([
               'data'=>new ProductResource($product)
           ],Response::HTTP_CREATED);
        }
        return response()->json([
                    'status'=>500,
                    'message'=>'fail',
                    'data'=>'This is no belong to you'
                ]);
    }
   
   

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        $authid=Auth::id();
        $pid=$product->id;
        if($this->belongToUser($authid,$pid)){
            $product->delete();
            return response([
                'status'=>1,
                'message'=>'success',
                'data'=>null
            ]);
            }
            return response()->json([
                        'status'=>0,
                        'message'=>'This is not your product',
                        'data'=>null
                    ]);

       
        
    }
    public function belongToUser($authuser_id,$pid)
    {
    //    $belongtouser=Product::class->where($puserid,$user_id)->get();
    //    return $belongtouser;
    $belongtouser=Product::where('user_id',$authuser_id)
                            ->where('id',$pid)->count();
        return $belongtouser;
       
    }
}
