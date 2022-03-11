<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Sales;

class SalesController extends Controller
{    
    public function index(Request $request)
    {
        try {
            if ($request['query'] != null && $request['query'] != '') {
                $string = '%' . strtoupper($request['query']) . '%';
                $data = Sales::where('nama_sales', 'like', $string)->paginate($request->limit ?? 10);
            } else {
                $data = Sales::paginate($request->limit ?? 10);
            }
            return response()->json($data);
        } catch (\Throwable $th) {
            return response()->json(['message' => $th], 400);
        }
    }
}