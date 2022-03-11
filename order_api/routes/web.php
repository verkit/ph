<?php
use App\Models\Order;
use Carbon\Carbon;
use Illuminate\Http\Request;

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return $router->app->version();
});


$router->get('/tae', function () use ($router) {
    $check = Order::where('tanggal', '2022-03-05')->get();
    $a = [];
    foreach ($check as $c) {
        array_push($a, $c->noorder);
    }
    $u = array_unique($a);
    return count($u);
// print_r(array_unique($a));
});

$router->get('/sales','SalesController@index');
$router->get('/food','FoodController@index');
$router->get('/pelanggan','PelangganController@index');
$router->get('/grup','GrupController@index');
$router->post('/order','OrderController@create');

$router->post('/order-test',function (Request $request) use ($router){
    
    for ($i = 0; $i < count($request->kode_sales); $i++) {
        $answers[] = [
            "kode_sales" => $request->kode_sales[$i],
            "nama_sales" => $request->nama_sales[$i],
            "latlong" => $request->latlong[$i],
        ];
    }
    Order::insert($answers);
    return response()->json(
        [
           'data' => [
                'response' => 200,
                'message' => 'asdasd'
                // 'message' => 'Nomor order anda : ' . $noorder,
           ]
        ],
    );
});
