<?php

Route::post('oauth/access_token', function() {
    return Response::json(Authorizer::issueAccessToken());
});

Route::get('/register',function() {
    $user = new App\User();
    $user->name="vitordangelo";
    $user->email="vitordangelo10@gmail.com";
    $user->password = \Illuminate\Support\Facades\Hash::make("vitor123");
    $user->save();
});

// Route::get('/teste-hash',function() {
//     $password = \Illuminate\Support\Facades\Hash::make("senha");
//     echo "$password.<br/>";
//     $password1 = \Illuminate\Support\Facades\Hash::make("teste");
//     echo $password1;
// });

//Com oauth
Route::group(['prefix'=>'api/v1', 'middleware' => ['oauth']], function(){
    Route::get('/', function () {
        return view('welcome');
    });

});

//Sem oauth
// Route::group(['prefix'=>'api/v1'], function(){
//     Route::get('/', function () {
//         return view('welcome');
//     });
//
// });
