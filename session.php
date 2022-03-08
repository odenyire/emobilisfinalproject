<?php

/************************************************ 
Edutech Schools e-Voting System is a product of African Digital Schools Initiative, a project by Edutech Consultants and Technology Limited,
a creative agency and consulting focusing on education, management and technology
************************************************/

session_start();
if (!isset($_SESSION['id'])){

header('location:index.php');
}
$session_id=$_SESSION['id'];
?>