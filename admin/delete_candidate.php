<?php

/************************************************ 
Edutech Schools e-Voting System is a product of African Digital Schools Initiative, a project by Edutech Consultants and Technology Limited,
a creative agency and consulting focusing on education, management and technology
************************************************/

include('dbcon.php');

$id=$_POST['id'];
$pc_date = $_POST['pc_date'];
$pc_time = $_POST['pc_time'];
$data_name = $_POST['data_name'];


mysqli_query($conn,"delete from candidate where CandidateID='$id'");


mysqli_query($conn,"INSERT INTO history (`data`,`action`,`date`,user)VALUES('$data_name', 'Deleted Candidate', '$pc_date $pc_time','Admin')");	


?>