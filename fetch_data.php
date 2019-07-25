<?php

//fetch_data.php

$connect = new PDO("mysql:host=localhost;dbname=router", "root", "");

$method = $_SERVER['REQUEST_METHOD'];

if($method == 'GET')
{
  $data = array(
    ':dates' => "%" . $_GET['dates'] . "%",
    ':serial_number'   => "%" . $_GET['serial_number'] . "%",
    ':dummy'   => "%" . $_GET['dummy'] . "%",
    ':holder'     => "%" . $_GET['holder'] . "%",
    ':status'    => "%" . $_GET['status'] . "%"

  );
  $query = "SELECT * FROM sample_data WHERE dates LIKE :dates AND serial_number LIKE :serial_number AND dummy LIKE :dummy AND holder LIKE :holder AND status LIKE :status ORDER BY id DESC";

  $statement = $connect->prepare($query);
  $statement->execute($data);
  $result = $statement->fetchAll();
  foreach($result as $row)
  {
    $output[] = array(

     'id'    => $row['id'],
     'dates' => $row['dates'], 
     'serial_number'  => $row['serial_number'],
     'dummy'   => $row['dummy'],
     'holder'    => $row['holder'],
     'status'   => $row['status']

    );
  }
  header("Content-Type: application/json");
    echo json_encode($output);
}

if($method == "POST")
{ 
  $data = array(

    ':dates' => $_POST['dates'],
    ':serial_number'  => $_POST['serial_number'],
    ':dummy'  => $_POST["dummy"],
    ':holder'    => $_POST["holder"],
    ':status'   => $_POST["status"]
  );

  $query = "INSERT INTO sample_data (dates, serial_number, dummy, holder, status) VALUES (:dates, :serial_number, :dummy, :holder, :status)";
  $statement = $connect->prepare($query);
  $statement->execute($data);
}

if($method == 'PUT')
{
  parse_str(file_get_contents("php://input"), $_PUT);
  $data = array(
    ':id'   => $_PUT['id'],
    ':dates'  => $_PUT['dates'],
    ':serial_number' => $_PUT['serial_number'],
    ':dummy' => $_PUT['dummy'],
    ':holder'   => $_PUT['holder'],
    ':status'  => $_PUT['status']
  );
  $query = "
  UPDATE sample_data 
  SET 
  serial_number = :serial_number, 
  dummy = :dummy, 
  holder = :holder, 
  status = :status
  
  WHERE id = :id
  ";
  $statement = $connect->prepare($query);
  $statement->execute($data);
}

if($method == "DELETE")
{
  parse_str(file_get_contents("php://input"), $_DELETE);
  $query = "DELETE FROM sample_data WHERE id = '".$_DELETE["id"]."'";
  $statement = $connect->prepare($query);
  $statement->execute();
}

?>