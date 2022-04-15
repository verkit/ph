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

    public function uploadPhoto(Request $request, $id)
    {
        $this->validate($request, [
            'gambar' => 'required|image|mimes:jpeg,png,jpg|max:2048',
        ]);

        $food = Food::find($id);
        if ($food == null) {
            return response()->json(['message' => 'Food not found'], 404);
        }

        $imageName = $id.'.'.$request->gambar->getClientOriginalExtension();
        // $food->gambar = request()->file('gambar')->store('gambar');
        $food->gambar = $request->gambar->move(storage_path('app/public/'), $imageName);
        // $current_image_path = storage_path('app/public/').$food->gambar;
        // if (file_exists($current_image_path)) {
        //     unlink($current_image_path);
        // }
        $food->save();
        // dd($food);
        $newfood = Food::find($id);
        return response()->json([
            'success' => true,
            'message' => 'Berhasil memperbarui gambar',
            'data' => $newfood,
        ], 200);
    }
}
