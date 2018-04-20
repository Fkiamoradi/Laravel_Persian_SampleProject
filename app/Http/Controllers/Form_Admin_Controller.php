<?php

namespace App\Http\Controllers;
use App\Form_Model;
use Illuminate\Support\Facades\View;
use Illuminate\Http\Request;

class Form_Admin_Controller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $form_db=Form_Model::orderby('name')->paginate(12);
        return View('admin.admin_form_',['form_db'=>$form_db]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        /*
        $record=Form_Model::find($id);
        return View('admin.admin_edit_form_',['record'=>$record]);
        */
    }
    public function update(Request $request, $id)
    {
    }
    public function destroy($id)
    {
        $destroy=Form_Model::findorFail($id);
        $destroy->delete();
        return redirect()->back();
    }
}
