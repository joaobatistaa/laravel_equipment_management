<?php
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
  page_require_level(1);
?>
<?php
  $agrupamento = find_by_id('agrupamentos',(int)$_GET['id']);
  if(!$agrupamento){
    $session->msg("d","Erro ao encontrar o ID do Agrupamento.");
    redirect('agrupamentos.php');
  }
?>
<?php
  $apagar_id = delete_by_id('agrupamentos',(int)$agrupamento['id']);
  if($apagar_id){
      $session->msg("s","Agrupamento eliminado com sucesso!");
      redirect('agrupamentos.php');
  } else {
      $session->msg("d","Erro ao eliminar Agrupamento!");
      redirect('agrupamentos.php');
  }
?>
