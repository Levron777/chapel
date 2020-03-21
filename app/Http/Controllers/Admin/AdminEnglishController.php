<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\English;
use DB;

class AdminEnglishController extends Controller
{
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

    // Method for redirecting to the edit page of the selected field from the news table

    public function edit()
    {
        $englishEdit = English::find(1);

        return view('admin.englishEdit', [
            'englishEdit' => $englishEdit,
        ]);
    }

    // Method for saving edited data entered by the administrator (with validation)

    public function update(Request $request, $id)
    {
        $englishEdit = English::find($id);

        $this->validate($request, [
            'titleInput' => 'required|max:255',
            'descriptionInput' => 'required',
            // 'urlInput' => 'nullable|url|max:255',
            'rubricInput' => 'required|max:255',
        ]);

        $englishEdit->title = $request->input('titleInput');
        $englishEdit->description = $request->input('descriptionInput');
        // $adressEdit->url = $request->input('urlInput');
        $englishEdit->rubric = $request->input('rubricInput');
        $englishEdit->save();

        return redirect('admin/english/edit');
    }
}
