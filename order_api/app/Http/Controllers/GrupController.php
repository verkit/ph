<?php

namespace App\Http\Controllers;

use App\Models\Grup;
use Illuminate\Http\Request;

class GrupController extends Controller
{
    public function index(Request $request)
    {
        try {
            if ($request['query'] != null && $request['query'] != '') {
                $string = '%' . strtoupper($request['query']) . '%';
                $data = Grup::where('nama_grup', 'like', $string)->paginate($request->limit ?? 10);
            } else {
                $data = Grup::paginate($request->limit ?? 10);
            }
            return response()->json($data);
        } catch (\Throwable $th) {
            return response()->json(['message' => $th], 400);
        }
    }
}
