<?php

/************************************************ 
Edutech Schools e-Voting System is a product of African Digital Schools Initiative, a project by Edutech Consultants and Technology Limited,
a creative agency and consulting focusing on education, management and technology
************************************************/

include('dbcon.php'); 
$id=$_POST['id'];


mysqli_query($conn,"update voters set VoterID='$id'");
?>