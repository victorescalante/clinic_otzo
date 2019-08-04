<?php
include '../conection.php';

$query = "select * from users";
$users = mysqli_query( $enlace, $query ) or die("mal query");

mysqli_close($enlace);



class User{

    public function __construct($name, $age)
    {
        $this->name = $name;
        $this->age = $age;
    }

    public function get_name(){
        return $this->name;
    }

    public function get_age(){
        return $this->age;
    }

    public function is_legal(){
        if($this->age >= 18){
            echo "Es legal";
        }
        else{
            echo "Es ilegal";
        }
    }
}


$user = new User("Victor", 12);

echo $user->name .'<br>';
echo $user->age .'<br>';
echo $user->is_legal() .'<br>';


$user = new User("Carlos", 21);

echo $user->name .'<br>';
echo $user->age .'<br>';
echo $user->is_legal() .'<br>';



?>

<html>
<title>Titulo</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<body>

    <div class="content">
        <div class="col-sm-12" style="padding: 15px;">
            <p class="text-primary">Agregar un nuevo usuario</p>
            <form action="create.php" method="post">
                <div>
                    <input type="text" name="name" placeholder="Nombre">
                    <input type="text" name="last_name" placeholder="Apellido paterno">
                    <input type="text" name="maternal_name" placeholder="Apellido materno">
                    <button type="submit">Agregar usuario</button>
                </div>
            </form>
        </div>
        <div class="col-sm-12">
            <h1>Usuarios de la base de datos</h1>
            <p>Este es un listado de base de datos de usuarios</p>
            <table class="table">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Apellido Paterno</th>
                    <th scope="col">Apellido Materno</th>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($users as $user){ ?>
                    <tr>
                        <th scope="row"><?php echo $user['id'] ?></th>
                        <td><?php echo $user['name'] ?></td>
                        <td><?php echo $user['last_name'] ?></td>
                        <td><?php echo $user['maternal_last_name'] ?></td>
                    </tr>
                <?php } ?>
                </tbody>
            </table>
        </div>
    </div>




    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>
