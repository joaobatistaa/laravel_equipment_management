<?php
  $page_title = 'Utilizadores';
  require_once('includes/load.php');
?>
<?php
// Checkin What level user has permission to view this page
 page_require_level(1);
//pull out all user form database
 $all_users = find_all_user();
?>
<?php include_once('layouts/header.php'); ?>
<div class="row">
   <div class="col-md-12">
     <?php echo display_msg($msg); ?>
   </div>
</div>
<div class="row">
  <div class="col-md-12">
    <div class="panel panel-default">
      <div class="panel-heading clearfix">
        <strong>
          <span class="glyphicon glyphicon-user"></span>
          <span>Utilizadores</span>
       </strong>
         <a href="adicionar_utilizador.php" class="btn btn-info pull-right">Adicionar Utilizador</a>
      </div>
     <div class="panel-body">
      <table class="table table-bordered table-striped">
        <thead>
          <tr>
            <th class="text-center" style="width: 50px;">#</th>
            <th>Nome </th>
            <th>Nome de Utilizador</th>
            <th class="text-center" style="width: 15%;">Permissão</th>
            <th class="text-center" style="width: 10%;">Estado</th>
            <th style="width: 20%;">Último login</th>
            <th class="text-center" style="width: 100px;">Ação</th>
          </tr>
        </thead>
        <tbody>
        <?php foreach($all_users as $a_user): ?>
          <tr>
           <td class="text-center"><?php echo count_id();?></td>
           <td><?php echo remove_junk(ucwords($a_user['nome']))?></td>
           <td><?php echo remove_junk($a_user['nomedeutilizador'])?></td>
           <td class="text-center"><?php echo remove_junk(ucwords($a_user['permissao_nome']))?></td>
           <td class="text-center">
           <?php if($a_user['estado'] === '1'): ?>
            <span class="label label-success"><?php echo "Ativado"; ?></span>
          <?php else: ?>
            <span class="label label-danger"><?php echo "Desativado"; ?></span>
          <?php endif;?>
           </td>
           <td><?php echo read_date($a_user['ultimo_login'])?></td>
           <td class="text-center">
             <div class="btn-group">
                <a href="editar_utilizador.php?id=<?php echo (int)$a_user['id'];?>" class="btn btn-xs btn-warning" data-toggle="tooltip" title="Editar">
                  <i class="glyphicon glyphicon-pencil"></i>
               </a>
                <a href="apagar_utilizador.php?id=<?php echo (int)$a_user['id'];?>" class="btn btn-xs btn-danger" data-toggle="tooltip" title="Eliminar">
                  <i class="glyphicon glyphicon-remove"></i>
                </a>
                </div>
           </td>
          </tr>
        <?php endforeach;?>
       </tbody>
     </table>
     </div>
    </div>
  </div>
</div>
  <?php include_once('layouts/footer.php'); ?>
