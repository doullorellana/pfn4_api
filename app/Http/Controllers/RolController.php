<?php

namespace App\Http\Controllers;

use App\Models\Rol;
use Illuminate\Http\Request;

class RolController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return Rol::all();
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
        $rol = new Rol();
        $rol -> fecha_creacion = $request -> fecha_creacion;
        $rol -> fecha_modificacion = $request -> fecha_modificacion;
        $rol -> usuario_creacion = $request -> usuario_creacion;
        $rol -> usuario_modificacion = $request -> usuario_modificacion;
        $rol -> rol = $request -> rol;
        $rol -> save();
        return "El rol se guardó correctamente.";
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $id = Rol::find($id);
        return $id;
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Rol $rol)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $rol = Rol::find($id);
        $rol -> fecha_creacion = $request -> fecha_creacion;
        $rol -> fecha_modificacion = $request -> fecha_modificacion;
        $rol -> usuario_creacion = $request -> usuario_creacion;
        $rol -> usuario_modificacion = $request -> usuario_modificacion;
        $rol -> rol = $request -> rol;
        $rol -> save();
        return "El rol se actualizó correctamente.";
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $rol = Rol::find($id);
        $rol -> delete();
        return "El rol se eliminó correctamente.";
    }
}
