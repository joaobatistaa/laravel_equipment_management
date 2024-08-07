<?php
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
   page_require_level(1);
?>
<?php
  $delete_id = delete_by_id('utilizadores',(int)$_GET['id']);
  if($delete_id){
      $session->msg("s","Utilizador apagado com sucesso!");
      redirect('utilizadores.php');
  } else {
      $session->msg("d","Ocorreu um erro ao apagar o utilizador!");
      redirect('utilizadores.php');
  }
?>
