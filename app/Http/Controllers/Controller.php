<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

// use App;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

  //   public function __construct()
  //   {
  //   	print_r("expression");exit;
  //   	print_r(App::getLocale());exit;
		// // CHANGE LANGUAGE PROCESS
		// if (App::isLocale('en')) {
		//     //
		//     print_r("expression");exit;
		//     App::setLocale("jp");
		// }
		// // if (Session::get('languageval') == "en") {
	 // //        App::setLocale("en");
  // //     	} else {
	 // //        App::setLocale("jp");
  // //     	}
  //   }
}
