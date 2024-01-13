<?php

namespace App\Http\Controllers;

use App\Models\Enlace;
use Illuminate\Http\Request;

class EnlaceController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return Enlace::all();
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $enlace = new Enlace();
        $enlace -> id_pagina = $request -> id_pagina;
        $enlace -> id_rol = $request -> id_rol;
        $enlace -> descripcion = $request -> descripcion;
        $enlace -> fecha_creacion = $request -> fecha_creacion;
        $enlace -> fecha_modificacion = $request -> fecha_modificacion;
        $enlace -> usuario_creacion = $request -> usuario_creacion;
        $enlace -> usuario_modificacion = $request -> usuario_modificacion;
        $enlace -> save();
        return "El enlace se guardó correctamente.";
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $id = Enlace::find($id);
        return $id;
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Enlace $enlace)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $enlace = Enlace::find($id);
        $enlace -> id_pagina = $request -> id_pagina;
        $enlace -> id_rol = $request -> id_rol;
        $enlace -> descripcion = $request -> descripcion;
        $enlace -> fecha_creacion = $request -> fecha_creacion;
        $enlace -> fecha_modificacion = $request -> fecha_modificacion;
        $enlace -> usuario_creacion = $request -> usuario_creacion;
        $enlace -> usuario_modificacion = $request -> usuario_modificacion;
        $enlace -> save();
        return "El enlace se actualizó correctamente.";
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $enlace = Enlace::find($id);
        $enlace -> delete();
        return "El enlace se eliminó correctamente.";
    }
}
