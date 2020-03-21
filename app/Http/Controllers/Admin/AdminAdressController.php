<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Adress;
use DB;

class AdminAdressController extends Controller
{
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

    // Method for redirecting to the edit page of the selected field from the news table

    public function edit()
    {
        $adressEdit = Adress::find(1);

        return view('admin.adressEdit', [
            'adressEdit' => $adressEdit,
        ]);
    }

    // Method for saving edited data entered by the administrator (with validation)

    public function update(Request $request, $id)
    {
        $adressEdit = Adress::find($id);

        $this->validate($request, [
            'titleInput' => 'required|max:255',
            'descriptionInput' => 'required',
            // 'urlInput' => 'nullable|url|max:255',
            'rubricInput' => 'required|max:255',
        ]);

        $adressEdit->title = $request->input('titleInput');
        $adressEdit->description = $request->input('descriptionInput');
        // $adressEdit->url = $request->input('urlInput');
        $adressEdit->rubric = $request->input('rubricInput');
        $adressEdit->save();

        return redirect('admin/adress/edit');
    }
}
