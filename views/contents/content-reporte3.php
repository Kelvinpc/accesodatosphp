<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>




<div>
  <table>
    <thead>
      <tr>
        <th>ID</th>
        <th>NOMBRE MASCOTA</th>
        <th>COLOR</th>
        <th>GENERO</th>
        <th>PROPIETARIO</th>
      </tr>
    </thead>
    <tbody>

      <?php foreach ($listaMascotas as $mascota): ?> 
        <tr>
          <td>1</td>
          <td> <?= $mascota['nombre'] ?> </td>
          <td>Perro</td>
          <td>Negro</td>
          <td>Macho</td>
          <td>qwe</td>
        </tr>
      <?php endforeach ?>


      
    </tbody>
  </table>
</div>

  
</body>
</html>