<?php
require_once '../entities/Mascota.entidad.php';
require_once '../models/Mascota.php';

$entidad = new MascotaEntidad();
$entidad->__SET('idpropietario',1);
$entidad->__SET('tipo','Gato');
$entidad->__SET('nombre','Bills');
$entidad->__SET('color','gris');
$entidad->__SET('genero','macho');

$mascota = new Mascota();
$idgenerado = $mascota->create($entidad);
var_dump($idgenerado);

