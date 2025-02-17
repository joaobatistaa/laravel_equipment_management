<?php
  $page_title = 'Permissões';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
   page_require_level(1);
  $permissoes = find_all('permissoes');
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
        <span class="glyphicon glyphicon-ban-circle"></span>
        <span>Permissões</span>
     </strong>
       <a href="adicionar_permissao.php" class="btn btn-info pull-right btn-sm"> Adicionar Permissão</a>
    </div>
     <div class="panel-body">
      <table class="table table-bordered">
        <thead>
          <tr>
            <th class="text-center" style="width: 50px;">#</th>
            <th>Nome da Permissão</th>
            <th class="text-center" style="width: 20%;">Nível</th>
            <th class="text-center" style="width: 15%;">Estado</th>
            <th class="text-center" style="width: 100px;">Ações</th>
          </tr>
        </thead>
        <tbody>
        <?php foreach($permissoes as $permissao): ?>
          <tr>
           <td class="text-center"><?php echo count_id();?></td>
           <td><?php echo remove_junk(ucwords($permissao['permissao_nome']))?></td>
           <td class="text-center">
             <?php echo remove_junk(ucwords($permissao['permissao_nivel']))?>
           </td>
           <td class="text-center">
           <?php if($permissao['permissao_estado'] === '1'): ?>
            <span class="label label-success"><?php echo "Ativado"; ?></span>
          <?php else: ?>
            <span class="label label-danger"><?php echo "Desativado"; ?></span>
          <?php endif;?>
           </td>
           <td class="text-center">
             <div class="btn-group">
                <a href="editar_permissao.php?id=<?php echo (int)$permissao['id'];?>" class="btn btn-xs btn-warning" data-toggle="tooltip" title="Editar">
                  <i class="glyphicon glyphicon-pencil"></i>
               </a>
                <a href="apagar_permissao.php?id=<?php echo (int)$permissao['id'];?>" class="btn btn-xs btn-danger" data-toggle="tooltip" title="Eliminar">
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
