<?php
  $page_title = 'Editar Usuario';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
   page_require_level(1);
?>
<?php
  $e_utilizador = find_by_id('utilizadores',(int)$_GET['id']);
  $permissoes  = find_all('permissoes');
  if(!$e_utilizador){
    $session->msg("d","Erro ao encontrar o ID do utilizador.");
    redirect('utilizadores.php');
  }
?>

<?php
//Update User basic info
  if(isset($_POST['update'])) {
    $req_fields = array('nome','nomedeutilizador','nivel');
    validate_fields($req_fields);
    if(empty($errors)){
             $id = (int)$e_utilizador['id'];
           $nome = remove_junk($db->escape($_POST['nome']));
       $nomedeutilizador = remove_junk($db->escape($_POST['nomedeutilizador']));
          $nivel = (int)$db->escape($_POST['nivel']);
       $estado   = remove_junk($db->escape($_POST['estado']));
            $sql = "UPDATE utilizadores SET nome ='{$nome}', nomedeutilizador ='{$nomedeutilizador}',utilizador_nivel='{$nivel}',estado='{$estado}' WHERE id='{$db->escape($id)}'";
         $result = $db->query($sql);
          if($result && $db->affected_rows() === 1){
            $session->msg('s',"Utilizador editado com sucesso!");
            redirect('editar_utilizador.php?id='.(int)$e_utilizador['id'], false);
          } else {
            $session->msg('d','Erro ao editar o utilizador!');
            redirect('editar_utilizador.php?id='.(int)$e_utilizador['id'], false);
          }
    } else {
      $session->msg("d", $errors);
      redirect('editar_utilizador.php?id='.(int)$e_utilizador['id'],false);
    }
  }
?>
<?php
// Update user password
if(isset($_POST['update-pass'])) {
  $req_fields = array('password');
  validate_fields($req_fields);
  if(empty($errors)){
           $id = (int)$e_utilizador['id'];
     $password = remove_junk($db->escape($_POST['password']));
     $h_pass   = sha1($password);
          $sql = "UPDATE utilizadores SET password='{$h_pass}' WHERE id='{$db->escape($id)}'";
       $result = $db->query($sql);
        if($result && $db->affected_rows() === 1){
          $session->msg('s',"Password do utilizador editada com sucesso! ");
          redirect('editar_utilizador.php?id='.(int)$e_utilizador['id'], false);
        } else {
          $session->msg('d','Erro ao atualizar a password do utilizador!');
          redirect('editar_utilizador.php?id='.(int)$e_utilizador['id'], false);
        }
  } else {
    $session->msg("d", $errors);
    redirect('editar_utilizador.php?id='.(int)$e_utilizador['id'],false);
  }
}

?>
<?php include_once('layouts/header.php'); ?>
 <div class="row">
   <div class="col-md-12"> <?php echo display_msg($msg); ?> </div>
  <div class="col-md-6">
     <div class="panel panel-default">
       <div class="panel-heading">
        <strong>
          <span class="glyphicon glyphicon-th"></span>
          Editar Utilizador: <?php echo remove_junk(ucwords($e_utilizador['nome'])); ?>
        </strong>
       </div>
       <div class="panel-body">
          <form method="post" action="editar_utilizador.php?id=<?php echo (int)$e_utilizador['id'];?>" class="clearfix">
            <div class="form-group">
                  <label for="name" class="control-label">Nome</label>
                  <input type="name" class="form-control" name="nome" value="<?php echo remove_junk(ucwords($e_utilizador['nome'])); ?>">
            </div>
            <div class="form-group">
                  <label for="username" class="control-label">Nome de Utilizador</label>
                  <input type="text" class="form-control" name="nomedeutilizador" value="<?php echo remove_junk($e_utilizador['nomedeutilizador']); ?>">
            </div>
            <div class="form-group">
              <label for="nivel">Permissão</label>
                <select class="form-control" name="nivel">
                  <?php foreach ($permissoes as $permissao ):?>
                   <option <?php if($permissao['permissao_nivel'] === $e_utilizador['utilizador_nivel']) echo 'selected="selected"';?> value="<?php echo $permissao['permissao_nivel'];?>"><?php echo $permissao['permissao_nome'];?></option>
                <?php endforeach;?>
                </select>
            </div>
            <div class="form-group">
              <label for="estado">Estado</label>
                <select class="form-control" name="estado">
                  <option <?php if($e_utilizador['estado'] === '0') echo 'selected="selected"';?> value="0">Desativado </option>
                  <option <?php if($e_utilizador['estado'] === '1') echo 'selected="selected"';?> value="1">Ativado </option>                 
                </select>
            </div>
            <div class="form-group clearfix">
                    <button type="submit" name="update" class="btn btn-info">Editar Utilizador</button>
            </div>
        </form>
       </div>
     </div>
  </div>
  <!-- Change password form -->
  <div class="col-md-6">
    <div class="panel panel-default">
      <div class="panel-heading">
        <strong>
          <span class="glyphicon glyphicon-th"></span>
          Redefinir Password: <?php echo remove_junk(ucwords($e_utilizador['nome'])); ?>
        </strong>
      </div>
      <div class="panel-body">
        <form action="editar_utilizador.php?id=<?php echo (int)$e_utilizador['id'];?>" method="post" class="clearfix">
          <div class="form-group">
                <label for="password" class="control-label">Nova Password</label>
                <input type="password" class="form-control" name="password" placeholder="Insira a nova password" required>
          </div>
          <div class="form-group clearfix">
                  <button type="submit" name="update-pass" class="btn btn-danger pull-right">Redefinir Password</button>
          </div>
        </form>
      </div>
    </div>
  </div>

 </div>
<?php include_once('layouts/footer.php'); ?>
