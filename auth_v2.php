<?php include_once('includes/load.php'); ?>
<?php
$req_fields = array('nomedeutilizador','password' );
validate_fields($req_fields);
$nomedeutilizador = remove_junk($_POST['nomedeutilizador']);
$password = remove_junk($_POST['password']);

  if(empty($errors)){

    $user = authenticate_v2($nomedeutilizador, $password);

        if($user):
           //create session with id
           $session->login($user['id']);
           //Update Sign in time
           updateLastLogIn($user['id']);
           // redirect user to group home page by user level
           if($user['user_level'] === '1'):
             $session->msg("s", "Olá ".$user['nomedeutilizador'].", bem vindo ao Painel de Gestão do Inventário.");
             redirect('admin.php',false);
           elseif ($user['user_level'] === '2'):
              $session->msg("s", "Olá ".$user['nomedeutilizador'].", bem vindo ao Painel de Gestão do Inventário.");
             redirect('special.php',false);
           else:
              $session->msg("s", "Olá ".$user['nomedeutilizador'].", bem vindo ao Painel de Gestão do Inventário.");
             redirect('home.php',false);
           endif;

        else:
          $session->msg("d", "Nome de Utilizador e/ou Password inválidos.");
          redirect('index.php',false);
        endif;

  } else {

     $session->msg("d", $errors);
     redirect('login_v2.php',false);
  }

?>
