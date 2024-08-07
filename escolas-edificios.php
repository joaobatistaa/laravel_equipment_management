<?php
  $page_title = 'Escolas/Edifícios';
  require_once('includes/load.php');
?>
<?php
// Checkin What level user has permission to view this page
 page_require_level(1);
//pull out all user form database
 $escolas_edificios = find_all('escolas_edificios');

 $agrupamentodados = find_by_id('agrupamentos', '6');

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
          <span class="glyphicon glyphicon-briefcase"></span>
          <span>Escolas/Edifícios</span>
       </strong>
         <a href="adicionar_escolas-edificios.php" class="btn btn-info pull-right">Adicionar Escola/Edifício</a>
      </div>
     <div class="panel-body">
      <table class="table table-bordered table-striped">
        <thead>
          <tr>
            <th class="text-center" style="width: 50px;">#</th>
            <th>Agrupamento </th>
            <th>Escola/Edifício</th>
            <th class="text-center" style="width: 100px;">Ação</th>
          </tr>
        </thead>
        <tbody>
        <?php foreach($escolas_edificios as $ee): ?>
          <tr>
           <td class="text-center"><?php echo count_id();?></td>
           <td><?php echo remove_junk(ucwords($ee['escola_edificio_nome']))?></td>
           <td><?php echo remove_junk(ucwords($ee['escola_edificio_agrupamento']))?></td>
           <td class="text-center">
             <div class="btn-group">
                <a href="editar_escolas-edificios.php?id=<?php echo (int)$ee['id'];?>" class="btn btn-xs btn-warning" data-toggle="tooltip" title="Editar">
                  <i class="glyphicon glyphicon-pencil"></i>
               </a>
                <a href="apagar_escolas-edificios.php?id=<?php echo (int)$ee['id'];?>" class="btn btn-xs btn-danger" data-toggle="tooltip" title="Eliminar">
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
