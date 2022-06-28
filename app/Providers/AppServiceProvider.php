<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\DB;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        try{
            Paginator::useBootstrap();
            $categoryGlobal = DB::table('tbl_all_category_product')->get();
        }catch(\Exception $e){
        }
        \View()->share('categoryGlobal',$categoryGlobal ?? []);

    }
}
