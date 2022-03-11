<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Models\Order;
use Carbon\Carbon;

class OrderController extends Controller
{
    public function index()
    {
        $orders = Order::orderBy('idtab', 'desc')->first();
        $noorder = 'ORSHT22';
        $lastnoorder = str_replace($noorder, "", $orders['noorder']);
        $lastnumber = (int)$lastnoorder + 1;
        $noorder .= str_pad($lastnumber, 5, '0', STR_PAD_LEFT);
        return $noorder;
    }

    public function create(Request $request)
    {
        $this->validate($request, [
            "kode_sales" => "required|array",
            "nama_sales" => "required|array",
            "kode_pelanggan" => "required|array",
            "nama_pelanggan" => "required|array",
            "kode_barang" => "required|array",
            "nama_barang" => "required|array",
            "quantity" => "required|array",
            "satuan" => "required|array",
            "harga" => "required|array",
            "grup" => "required|array",
            "latlong" => "required|array",
            "hp" => "required|array",
        ]);

        // Cek orderan 1 hp lebih dari 5
        $date = Carbon::now()->toDateString();
        $check = Order::where('tanggal', $date)->where('hp', $request->hp[0])->get();
        $a = [];
        foreach ($check as $c) {
            array_push($a, $c->noorder);
        }
        $u = count(array_unique($a));

        if ($u > 4) {
            // Jika lebih
            return response()->json(
                [
                    'success' => false,
                    'message' => 'Maksimum order telah tercapai',
                ],
            );
        } else {
            // Jika belum
            $order = Order::orderBy('idtab', 'desc')->first();
            $noorder = 'ORSHT22';
            $lastnoorder = str_replace($noorder, "", $order['noorder']);
            $lastnumber = (int)$lastnoorder + 1;
            $noorder .= str_pad($lastnumber, 5, '0', STR_PAD_LEFT);

            $time = Carbon::now()->toTimeString();

            for ($i = 0; $i < count($request->hp); $i++) {
                $answers[] = [
                    "noorder" => $noorder,
                    "so_pleg" => 1,
                    "tanggal" => $date,
                    "jam" => $time,
                    "kode_sales" => $request->kode_sales[$i],
                    "nama_sales" => $request->nama_sales[$i],
                    "kode_pelanggan" => $request->kode_pelanggan[$i],
                    "nama_pelanggan" => $request->nama_pelanggan[$i],
                    "kode_barang" => $request->kode_barang[$i],
                    "nama_barang" => $request->nama_barang[$i],
                    "quantity" => $request->quantity[$i],
                    "satuan" => $request->satuan[$i],
                    "harga" => $request->harga[$i],
                    "jumlah" => $request->quantity[$i] * $request->harga[$i],
                    "condiman" => $request->condiman[$i] ?? null,
                    "grup" => $request->grup[$i],
                    "latlong" => $request->latlong[$i],
                    "hp" => $request->hp[$i],
                ];
            }
            Order::insert($answers);
            return response()->json(
                [
                    'success' => true,
                    'message' => 'Nomor order anda : ' . $noorder,
                ],
            );
        }
    }
}
