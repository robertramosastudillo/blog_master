<?php require_once 'conexion.php' ?>
<?php require_once 'includes/helpers.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Blog de Videojuegos</title>
    <link rel="stylesheet" type="text/css" href="./assets/css/style.css">
</head>
<body>
        <!-- CABECERA -->
        <header id="cabecera">
            <div id="logo">
                <a href="index.php">
                    Blog de Videojuegos                   
                </a>
            </div>

            <!-- MENU -->
            <nav id="menu">
                <ul>
                    <li>
                        <a href="Index.php">Inicio</a>
                    </li>
                    <?php 
                        $categorias = conseguirCategorias($db);
                        if(!empty($categorias)):
                            while($categoria = mysqli_fetch_assoc($categorias)): 
                    ?>
                                <li>
                                    <a href="categoria.php?id=<?=$categoria['id']?>"><?= $categoria['nombre']?></a>
                                </li>
                    <?php
                            endwhile;
                        endif;
                    ?>                    
                    <li>
                        <a href="Index.php">Sobre mí</a>
                    </li>
                    <li>
                        <a href="Index.php">Contacto</a>
                    </li>
                </ul>
            </nav>

            <div class="clearfix"></div>
        </header>

        <div id="contenedor">