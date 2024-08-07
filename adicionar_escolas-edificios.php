<?php
  $page_title = 'Adicionar Escola/Edifício';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
  page_require_level(1);
  $agrupamento = find_all('agrupamentos');
?>
<?php
  if(isset($_POST['adicionar_escola_edificio'])){

   $req_fields = array('nome_escola_edificio','agrupamento_nome');
   validate_fields($req_fields);

   if(empty($errors)){
       $escola_edificio_nome  = remove_junk($db->escape($_POST['nome_escola_edificio']));
       $agrupamento_nome   = remove_junk($db->escape($_POST['agrupamento_nome']));
        $query = "INSERT INTO escolas_edificios (";
        $query .="escola_edificio_nome,escola_edificio_agrupamento";
        $query .=") VALUES (";
        $query .="'{$escola_edificio_nome}','{$agrupamento_nome}'"; 
        $query .=")";
        if($db->query($query)){
          //sucess
          $session->msg('s',"Escola/Edifício adicionado com sucesso!");
          redirect('adicionar_escolas-edificios.php', false);
        } else {
          //failed
          $session->msg('d',' Erro ao adicionar a Escola/Edifício, verifique todos os campos.');
          redirect('adicionar_escolas-edificios.php', false);
        }
   } else {
     $session->msg("d", $errors);
      redirect('adicionar_escolas-edificios.php',false);
   }
 }
?>
<?php include_once('layouts/header.php'); ?>
  <?php echo display_msg($msg); ?>
  <div class="row">
    <div class="panel panel-default">
      <div class="panel-heading">
        <strong>
          <span class="glyphicon glyphicon-briefcase"></span>
          <span>Adicionar Escola/Edifício</span>
       </strong>
      </div>
      <div class="panel-body">
        <div class="col-md-6">
          <form method="post" action="adicionar_escolas-edificios.php">
            <div class="form-group">
                <label for="nomedeutilizador">Nome da Escola/Edifício</label>
                <input type="text" class="form-control" name="nome_escola_edificio" placeholder="Nome da Escola/Edifício">
            </div>
            <div class="form-group">
              <label for="nivel">Agrupamento</label>
                <select class="form-control" name="agrupamento_nome">
                  <?php foreach ($agrupamento as $agr ):?>
                   <option value="<?php echo $agr['id'];?>"><?php echo ucwords($agr['agrupamento_nome']);?></option>
                <?php endforeach;?>
                </select>
            </div>
            <div class="form-group clearfix">
              <button type="submit" name="adicionar_escola_edificio" class="btn btn-primary">Adicionar Escola/Edifício</button>
            </div>
        </form>
        </div>

      </div>

    </div>
  </div>

<?php include_once('layouts/footer.php'); ?>
