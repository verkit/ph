<?php

namespace App\Http\Controllers;

use App\Models\Pelanggan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redis;

class PelangganController extends Controller
{
    public function index(Request $request)
    {
        try {
            if ($request['query'] != null && $request['query'] != '') {
                $string = '%' . strtoupper($request['query']) . '%';
                $data = Pelanggan::where('nama_pelanggan', 'like', $string)->get();
            } else {
                $data = Redis::get('customers');
                if ($data == null){
                    $data = Pelanggan::all();
                    Redis::set('customers', $data);                  
                } 
            }
            return response()->json(["data"=> json_decode($data)]    );
        } catch (\Throwable $th) {
            return response()->json(['message' => $th], 400);
        }
    }    
}