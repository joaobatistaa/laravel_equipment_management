<?php
  $page_title = 'Adicionar Utilizador';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
  page_require_level(1);
  $permissoes = find_all('permissoes');
?>
<?php
  if(isset($_POST['adicionar_utilizador'])){

   $req_fields = array('nome-completo','nomedeutilizador','password','nivel' );
   validate_fields($req_fields);

   if(empty($errors)){
       $nome   = remove_junk($db->escape($_POST['nome-completo']));
       $nomedeutilizador   = remove_junk($db->escape($_POST['nomedeutilizador']));
       $password   = remove_junk($db->escape($_POST['password']));
       $utilizador_nivel = (int)$db->escape($_POST['nivel']);
       $password = sha1($password);
        $query = "INSERT INTO utilizadores (";
        $query .="nome,nomedeutilizador,password,utilizador_nivel,estado";
        $query .=") VALUES (";
        $query .=" '{$nome}', '{$nomedeutilizador}', '{$password}', '{$utilizador_nivel}','1'";
        $query .=")";
        if($db->query($query)){
          //sucess
          $session->msg('s'," Utilizador adicionado com sucesso!");
          redirect('adicionar_utilizador.php', false);
        } else {
          //failed
          $session->msg('d',' Erro ao adicionar o utilizador, verifique todos os campos.');
          redirect('adicionar_utilizador.php', false);
        }
   } else {
     $session->msg("d", $errors);
      redirect('adicionar_utilizador.php',false);
   }
 }
?>
<?php include_once('layouts/header.php'); ?>
  <?php echo display_msg($msg); ?>
  <div class="row">
    <div class="panel panel-default">
      <div class="panel-heading">
        <strong>
          <span class="glyphicon glyphicon-th"></span>
          <span>Adicionar Utilizador</span>
       </strong>
      </div>
      <div class="panel-body">
        <div class="col-md-6">
          <form method="post" action="adicionar_utilizador.php">
            <div class="form-group">
                <label for="name">Nome</label>
                <input type="text" class="form-control" name="nome-completo" placeholder="Nome Completo" required>
            </div>
            <div class="form-group">
                <label for="nomedeutilizador">Nome de Utilizador</label>
                <input type="text" class="form-control" name="nomedeutilizador" placeholder="Nome de Utilizador">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" name ="password"  placeholder="Password">
            </div>
            <div class="form-group">
              <label for="nivel">Permissão</label>
                <select class="form-control" name="nivel">
                  <?php foreach ($permissoes as $permissao ):?>
                   <option value="<?php echo $permissao['permissao_nivel'];?>"><?php echo ucwords($permissao['permissao_nome']);?></option>
                <?php endforeach;?>
                </select>
            </div>
            <div class="form-group clearfix">
              <button type="submit" name="adicionar_utilizador" class="btn btn-primary">Adicionar Utilizador</button>
            </div>
        </form>
        </div>

      </div>

    </div>
  </div>

<?php include_once('layouts/footer.php'); ?>
