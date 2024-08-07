<?php
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
   page_require_level(1);
?>
<?php
  $delete_id = delete_by_id('permissoes',(int)$_GET['id']);
  if($delete_id){
      $session->msg("s","Permissão eliminada com sucesso!");
      redirect('permissoes.php');
  } else {
      $session->msg("d","Erro ao eliminar permissão!");
      redirect('permissoes.php');
  }
?>
