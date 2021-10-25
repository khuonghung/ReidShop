<?php 
if(isset($_POST['submit'])){ 
    $to = "khuonghung1423@gmail.com";  
    $subject = $_REQUEST['subject'] ;  
    $email = $_REQUEST['email'] ;  
    $message = $_REQUEST['message'] ;  
    $headers = $sent = mail($to, $subject, $message, $headers) ;      
}
?>