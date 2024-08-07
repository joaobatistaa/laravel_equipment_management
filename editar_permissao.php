<?php
  $page_title = 'Editar Permissão';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
   page_require_level(1);
?>
<?php
  $permissao = find_by_id('permissoes',(int)$_GET['id']);
  if(!$permissao){
    $session->msg("d","Erro ao encontrar o ID da Permissão.");
    redirect('permissoes.php');
  }
?>
<?php
  if(isset($_POST['editar_permissao'])){

   $req_fields = array('permissao_nome','permissao_nivel');
   validate_fields($req_fields);
   if(empty($errors)){
           $nome = remove_junk($db->escape($_POST['permissao_nome']));
          $nivel = remove_junk($db->escape($_POST['permissao_nivel']));
         $estado = remove_junk($db->escape($_POST['permissao_estado']));

        $query  = "UPDATE permissoes SET ";
        $query .= "permissao_nome='{$nome}',permissao_nivel='{$nivel}',permissao_estado='{$estado}'";
        $query .= "WHERE ID='{$db->escape($permissao['id'])}'";
        $result = $db->query($query);
         if($result && $db->affected_rows() === 1){
          //sucess
          $session->msg('s',"Permissão editada com sucesso! ");
          redirect('editar_permissao.php?id='.(int)$permissao['id'], false);
        } else {
          //failed
          $session->msg('d','Erro ao editar a permissão!');
          redirect('editar_permissao.php?id='.(int)$permissao['id'], false);
        }
   } else {
     $session->msg("d", $errors);
    redirect('editar_permissao.php?id='.(int)$permissao['id'], false);
   }
 }
?>
<?php include_once('layouts/header.php'); ?>
<div class="login-page">
    <div class="text-center">
       <h3>Editar Permissão</h3>
     </div>
     <br> </br>
     <?php echo display_msg($msg); ?>
      <form method="post" action="editar_permissao.php?id=<?php echo (int)$permissao['id'];?>" class="clearfix">
        <div class="form-group">
              <label for="nome" class="control-label">Nome da Permissão</label>
              <input type="name" class="form-control" name="permissao_nome" value="<?php echo remove_junk(ucwords($permissao['permissao_nome'])); ?>">
        </div>
        <div class="form-group">
              <label for="nivel" class="control-label">Nível da Permissão</label>
              <input type="number" class="form-control" name="permissao_nivel" value="<?php echo (int)$permissao['permissao_nivel']; ?>">
        </div>
        <div class="form-group">
          <label for="estado">Estado</label>
              <select class="form-control" name="permissao_estado">
                <option <?php if($permissao['permissao_estado'] === '1') echo 'selected="selected"';?> value="1"> Ativado</option>
                <option <?php if($permissao['permissao_estado'] === '0') echo 'selected="selected"';?> value="0">Desativado</option>
              </select>
        </div>
        <div align="center" class="form-group clearfix">
                <button type="submit" name="editar_permissao" class="btn btn-info">Editar Permissão</button>
        </div>
    </form>
</div>

<?php include_once('layouts/footer.php'); ?>
