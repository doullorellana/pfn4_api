<?php

namespace App\Http\Controllers;

use App\Models\Pagina;
use Illuminate\Http\Request;

class PaginaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return Pagina::all();
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
        $pagina = new Pagina();
        $pagina -> fecha_creacion = $request -> fecha_creacion;
        $pagina -> fecha_modificacion = $request -> fecha_modificacion;
        $pagina -> usuario_creacion = $request -> usuario_creacion;
        $pagina -> usuario_modificacion = $request -> usuario_modificacion;
        $pagina -> url = $request -> url;
        $pagina -> nombre = $request -> nombre;
        $pagina -> descripcion = $request -> descripcion;
        $pagina -> save();
        return "La pagina se guardó correctamente.";
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $id = Pagina::find($id);
        return $id;
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Pagina $pagina)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $pagina = Pagina::find($id);
        $pagina -> fecha_creacion = $request -> fecha_creacion;
        $pagina -> fecha_modificacion = $request -> fecha_modificacion;
        $pagina -> usuario_creacion = $request -> usuario_creacion;
        $pagina -> usuario_modificacion = $request -> usuario_modificacion;
        $pagina -> url = $request -> url;
        $pagina -> nombre = $request -> nombre;
        $pagina -> descripcion = $request -> descripcion;
        $pagina -> save();
        return "La pagina se actualizó correctamente.";
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $pagina = Pagina::find($id);
        $pagina -> delete();
        return "La pagina se eliminó correctamente.";
    }
}
