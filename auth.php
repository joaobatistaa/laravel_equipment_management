<?php include_once('includes/load.php'); ?>
<?php
$req_fields = array('nomedeutilizador','password' );
validate_fields($req_fields);
$nomedeutilizador = remove_junk($_POST['nomedeutilizador']);
$password = remove_junk($_POST['password']);

if(empty($errors)){
  $user_id = authenticate($nomedeutilizador, $password);
  if($user_id){
    //create session with id
     $session->login($user_id);
    //Update Sign in time
     updateLastLogIn($user_id);
     $session->msg("s", "Painel de Gestão do Inventário.");
     redirect('home.php',false);

  } else {
    $session->msg("d", "Nome de Utilizador e/ou Password inválidos.");
    redirect('index.php',false);
  }

} else {
   $session->msg("d", $errors);
   redirect('index.php',false);
}

?>
