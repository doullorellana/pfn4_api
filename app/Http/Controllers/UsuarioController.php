<?php

namespace App\Http\Controllers;

use App\Models\Usuario;
use Illuminate\Http\Request;

class UsuarioController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return Usuario::all();
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
        $usuario = new Usuario();
        $usuario -> fecha_creacion = $request -> fecha_creacion;
        $usuario -> fecha_modificacion = $request -> fecha_modificacion;
        $usuario -> usuario_creacion = $request -> usuario_creacion;
        $usuario -> usuario_modificacion = $request -> usuario_modificacion;
        $usuario -> id_persona = $request -> id_persona;
        $usuario -> usuario_email = $request -> usuario_email;
        $usuario -> clave = $request -> clave;
        $usuario -> estado = $request -> estado;
        $usuario -> fecha_nacimiento = $request -> fecha_nacimiento;
        $usuario -> id_rol = $request -> id_rol;
        $usuario -> save();
        return "El usuario se guardó correctamente.";
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $id = Usuario::find($id);
        return $id;
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Usuario $usuario)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $usuario = Usuario::find($id);
        $usuario -> fecha_creacion = $request -> fecha_creacion;
        $usuario -> fecha_modificacion = $request -> fecha_modificacion;
        $usuario -> usuario_creacion = $request -> usuario_creacion;
        $usuario -> usuario_modificacion = $request -> usuario_modificacion;
        $usuario -> id_persona = $request -> id_persona;
        $usuario -> usuario_email = $request -> usuario_email;
        $usuario -> clave = $request -> clave;
        $usuario -> estado = $request -> estado;
        $usuario -> fecha_nacimiento = $request -> fecha_nacimiento;
        $usuario -> id_rol = $request -> id_rol;
        $usuario -> save();
        return "El usuario se actualizó correctamente.";
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $usuario = Usuario::find($id);
        $usuario -> delete();
        return "El usuario se eliminó correctamente.";
    }
}
