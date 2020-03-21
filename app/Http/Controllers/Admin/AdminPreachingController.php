<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Preaching;
use DB;

class AdminPreachingController extends Controller
{
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

    public function index(Request $request)
    {
        $preachings = DB::table('preaching')->orderBy('created_at', 'desc')->paginate(2);

        return view('admin.preachings', [
            'preachings' => $preachings,
        ]);
    }

    // Saving data entered in the input field by the administrator in the database 
    // (with validation)

    public function store(Request $request)
    {
        $this->validate($request, [
            'subTitleInput' => 'required|max:255',
            'authorInput' => 'required',
            'urlInput' => 'nullable|url|max:255',
            'rubricInput' => 'required|max:255',
        ]);

        $preachings = new Preaching;

        $preachings->subTitle = $request->input('subTitleInput');
        $preachings->author = $request->input('authorInput');
        $preachings->url = $request->input('urlInput');
        $preachings->rubric = $request->input('rubricInput');
        $preachings->save();

        return redirect('admin/preachings');
    }

    // Method for redirecting to the edit page of the selected field from the news table

    public function edit($id)
    {
        $preachingsEdit = Preaching::find($id);

        return view('admin.preachingsEdit', [
            'preachingsEdit' => $preachingsEdit,
        ]);
    }

    // Method for saving edited data entered by the administrator (with validation)

    public function update(Request $request, $id)
    {
        $preachingsEdit = Preaching::find($id);

        $this->validate($request, [
            'subTitleInput' => 'required|max:255',
            'authorInput' => 'required',
            'urlInput' => 'nullable|url|max:255',
            'rubricInput' => 'required|max:255',
        ]);

        $preachingsEdit->subTitle = $request->input('subTitleInput');
        $preachingsEdit->author = $request->input('authorInput');
        $preachingsEdit->url = $request->input('urlInput');
        $preachingsEdit->rubric = $request->input('rubricInput');
        $preachingsEdit->save();

        return redirect('admin/preachings');
    }

    // Method to delete the selected row from the news table

    public function delete(Request $request, $id)
    {
        $preachings = Preaching::where('id', $id)->delete();

        return redirect('admin/preachings');
    }
}
