<?php
  $page_title = 'Agrupamentos de Escolas';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
  page_require_level(1);
  
  $all_agrupamentos = find_all('agrupamentos')
?>
<?php
 if(isset($_POST['add_agrupamento'])){
   $req_field = array('agrupamento-nome');
   validate_fields($req_field);
   $agrupamento = remove_junk($db->escape($_POST['agrupamento-nome']));
   if(empty($errors)){
      $sql  = "INSERT INTO agrupamentos (agrupamento_nome)";
      $sql .= " VALUES ('{$agrupamento}')";
      if($db->query($sql)){
        $session->msg("s", "Agrupamento de Escolas adicionado com sucesso!");
        redirect('agrupamentos.php',false);
      } else {
        $session->msg("d", "Erro ao adicionar registo!");
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
  </div>
   <div class="row">
    <div class="col-md-5">
      <div class="panel panel-default">
        <div class="panel-heading">
          <strong>
            <span class="glyphicon glyphicon-list-alt"></span>
            <span>Adicionar Agrupamento de Escolas</span>
         </strong>
        </div>
        <div class="panel-body">
          <form method="post" action="agrupamentos.php">
            <div class="form-group">
                <input type="text" class="form-control" name="agrupamento-nome" placeholder="Nome do Agrupamento de Escolas" required>
            </div>
            <button type="submit" name="add_agrupamento" class="btn btn-primary">Adicionar Agrupamento</button>
        </form>
        </div>
      </div>
    </div>
    <div class="col-md-7">
    <div class="panel panel-default">
      <div class="panel-heading">
        <strong>
          <span class="glyphicon glyphicon-list-alt"></span>
          <span>Agrupamentos de Escolas</span>
       </strong>
      </div>
        <div class="panel-body">
          <table class="table table-bordered table-striped table-hover">
            <thead>
                <tr>
                    <th class="text-center" style="width: 50px;">#</th>
                    <th>Nome do Agrupamento de Escolas</th>
                    <th class="text-center" style="width: 100px;">Ações</th>
                </tr>
            </thead>
            <tbody>
              <?php foreach ($all_agrupamentos as $agr):?>
                <tr>
                    <td class="text-center"><?php echo count_id();?></td>
                    <td><?php echo remove_junk(ucfirst($agr['agrupamento_nome'])); ?></td>
                    <td class="text-center">
                      <div class="btn-group">
                        <a href="editar_agrupamento.php?id=<?php echo (int)$agr['id'];?>"  class="btn btn-xs btn-warning" data-toggle="tooltip" title="Editar">
                          <span class="glyphicon glyphicon-pencil"></span>
                        </a>
                        <a href="apagar_agrupamento.php?id=<?php echo (int)$agr['id'];?>"  class="btn btn-xs btn-danger" data-toggle="tooltip" title="Eliminar">
                          <span class="glyphicon glyphicon-remove"></span>
                        </a>
                      </div>
                    </td>

                </tr>
              <?php endforeach; ?>
            </tbody>
          </table>
       </div>
    </div>
    </div>
   </div>
  </div>
  <?php include_once('layouts/footer.php'); ?>
