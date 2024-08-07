<?php
  $page_title = 'Adicionar Permissão';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
   page_require_level(1);
?>
<?php
  if(isset($_POST['adicionar_permissao'])){

   $req_fields = array('permissao_nome','permissao_nivel');
   validate_fields($req_fields);

   if(find_by_groupName($_POST['permissao_nome']) === false ){
     $session->msg('d','<b>Erro!</b> Este Nome de Permissão já existe na base de dados!');
     redirect('adicionar_permissao.php', false);
   }elseif(find_by_groupLevel($_POST['permissao_nivel']) === false) {
     $session->msg('d','<b>Erro!</b> Este Nível de Permissão já existe na base de dados!');
     redirect('adicionar_permissao.php', false);
   }
   if(empty($errors)){
           $nome = remove_junk($db->escape($_POST['permissao_nome']));
          $nivel = remove_junk($db->escape($_POST['permissao_nivel']));
         $estado = remove_junk($db->escape($_POST['permissao_estado']));

        $query  = "INSERT INTO permissoes (";
        $query .="permissao_nome,permissao_nivel,permissao_estado";
        $query .=") VALUES (";
        $query .=" '{$nome}', '{$nivel}','{$estado}'";
        $query .=")";
        if($db->query($query)){
          //sucess
          $session->msg('s',"Permissão criada com sucesso! ");
          redirect('adicionar_permissao.php', false);
        } else {
          //failed
          $session->msg('d','Erro ao criar permissão!');
          redirect('aadicionar_permissao.php', false);
        }
   } else {
     $session->msg("d", $errors);
      redirect('adicionar_permissao.php',false);
   }
 }
?>
<?php include_once('layouts/header.php'); ?>
<div class="login-page">
    <div class="text-center">
       <h3>Adicionar Permissão</h3>
     </div>
     <br></br>
     <?php echo display_msg($msg); ?>
      <form method="post" action="adicionar_permissao.php" class="clearfix">
        <div class="form-group">
              <label for="nome" class="control-label">Nome da Permissão</label>
              <input type="name" class="form-control" name="permissao_nome" required>
        </div>
        <div class="form-group">
              <label for="nivel" class="control-label">Nível</label>
              <input type="number" class="form-control" name="permissao_nivel">
        </div>
        <div class="form-group">
          <label for="estado">Estado</label>
            <select class="form-control" name="permissao_estado">
              <option value="1">Ativado</option>
              <option value="0">Desativado</option>
            </select>
        </div>
        <div align="center" class="form-group clearfix">
                
                <button type="submit" name="adicionar_permissao" class="btn btn-info">Adicionar Permissão</button>
        </div>
    </form>
</div>

<?php include_once('layouts/footer.php'); ?>
