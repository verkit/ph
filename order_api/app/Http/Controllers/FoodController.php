<?php

namespace App\Http\Controllers;

use App\Models\Food;
use Illuminate\Http\Request;

class FoodController extends Controller
{
    public function index(Request $request)
    {
        try {
            if (($request['query'] != null && $request['query'] != '') && ($request['group'] != null && $request['group'] != '')) {
                $data = $this->groupWithQuery(
                    $request['query'],
                    strtoupper($request['group']),
                    $request['limit'] ?? 50,
                );
            } else if ($request['query'] != null && $request['query'] != '') {
                $data = $this->whereLike(
                    $request['query'],
                    $request['limit'] ?? 50,
                );
            } else if ($request['group'] != null && $request['group'] != '') {
                $data = $this->group(
                    strtoupper($request['group']),
                    $request['limit'] ?? 50,
                );
            } else {
                $data = Food::paginate($request->limit ?? 50);
            }
            return response()->json($data);
        } catch (\Throwable $th) {
            return response()->json(['message' => 'Terjadi kesalahan'], 400);
        }
    }

    function whereLike(String $query, int $limit)
    {
        $string = '%' . strtoupper($query) . '%';
        return Food::where('nama_barang', 'like', $string)->paginate($limit);
    }

    public function group(String $group, String $limit)
    {
        return Food::where('grup', '=', $group)->paginate($limit);
    }

    public function groupWithQuery(String $query, String $group, String $limit)
    {

        $string = '%' . strtoupper($query) . '%';
        return Food::where('nama_barang', 'like', $string)
            ->where('grup', '=', $group)
            ->paginate($limit);
    }
}
