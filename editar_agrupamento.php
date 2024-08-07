<?php
  $page_title = 'Editar categoría';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
  page_require_level(1);
?>
<?php
  //Display all catgories.
  $agrupamento = find_by_id('agrupamentos',(int)$_GET['id']);
  if(!$agrupamento){
    $session->msg("d","Erro ao encontrar o ID do Agrupamento.");
    redirect('editar_agrupamento.php');
  }
?>

<?php
if(isset($_POST['editar_agrupamento'])){
  $req_field = array('agrupamento-nome');
  validate_fields($req_field);
  $agrupamento_nome = remove_junk($db->escape($_POST['agrupamento-nome']));
  if(empty($errors)){
        $sql = "UPDATE agrupamentos SET agrupamento_nome='{$agrupamento_nome}'";
       $sql .= " WHERE id='{$agrupamento['id']}'";
     $result = $db->query($sql);
     if($result && $db->affected_rows() === 1) {
       $session->msg("s", "Agrupamento de Escolas editado com sucesso!");
       redirect('agrupamentos.php',false);
     } else {
       $session->msg("d", "Erro ao editar o Agrupamento de Escolas!");
       redirect('agrupamentos.php',false);
     }
  } else {
    $session->msg("d", $errors);
    redirect('agrupamentos.php',false);
  }
}
?>
<?php include_once('layouts/header.php'); ?>

<div class="row">
   <div class="col-md-12">
     <?php echo display_msg($msg); ?>
   </div>
   <div class="col-md-8">
     <div class="panel panel-default">
       <div class="panel-heading">
         <strong>
           <span class="glyphicon glyphicon-th"></span>
           <span>A Editar: <?php echo remove_junk(ucfirst($agrupamento['agrupamento_nome']));?></span>
        </strong>
       </div>
       <div class="panel-body">
         <form method="post" action="editar_agrupamento.php?id=<?php echo (int)$agrupamento['id'];?>">
           <div class="form-group">
               <input type="text" class="form-control" name="agrupamento-nome" value="<?php echo remove_junk(ucfirst($agrupamento['agrupamento_nome']));?>">
           </div>
           <button type="submit" name="editar_agrupamento" class="btn btn-primary">Editar Agrupamento</button>
       </form>
       </div>
     </div>
   </div>
</div>



<?php include_once('layouts/footer.php'); ?>
