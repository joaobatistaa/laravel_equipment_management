<?php
  $page_title = 'Página Inicial';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
   page_require_level(1);
?>
<?php
 $c_inventario     = count_by_id('estoque');
 $c_escolas       = count_by_id('escolas_edificios');
 $c_agrupamentos  = count_by_id('agrupamentos');
 $c_utilizadores  = count_by_id('utilizadores');
?>
<?php include_once('layouts/header.php'); ?>

<div class="row">
   <div class="col-md-6">
     <?php echo display_msg($msg); ?>
   </div>
</div>
  <div class="row">
    <div class="col-md-3">
       <div class="panel panel-box clearfix">
         <div class="panel-icon pull-left bg-green">
          <i class="glyphicon glyphicon-user"></i>
        </div>
        <div class="panel-value pull-right">
          <h2 class="margin-top"> <?php  echo $c_utilizadores['total']; ?> </h2>
          <p class="text-muted">Utilizadores</p>
        </div>
       </div>
    </div>
    <div class="col-md-3">
       <div class="panel panel-box clearfix">
         <div class="panel-icon pull-left bg-red">
          <i class="glyphicon glyphicon-folder-open"></i>
        </div>
        <div class="panel-value pull-right">
          <h2 class="margin-top"> <?php  echo $c_inventario['total']; ?> </h2>
          <p class="text-muted">Inventário</p>
        </div>
       </div>
    </div>
    <div class="col-md-3">
       <div class="panel panel-box clearfix">
         <div class="panel-icon pull-left bg-blue">
          <i class="glyphicon glyphicon-list-alt"></i>
        </div>
        <div class="panel-value pull-right">
          <h2 class="margin-top"> <?php  echo $c_agrupamentos['total']; ?> </h2>
          <p class="text-muted">Agrupamentos</p>
        </div>
       </div>
    </div>
    <div class="col-md-3">
       <div class="panel panel-box clearfix">
         <div class="panel-icon pull-left bg-yellow">
          <i class="glyphicon glyphicon-briefcase"></i>
        </div>
        <div class="panel-value pull-right">
          <h2 class="margin-top"> <?php  echo $c_escolas['total']; ?></h2>
          <p class="text-muted">Escolas</p>
        </div>
       </div>
    </div>
</div>
  <div class="row">
   <div class="col-md-4">
     <div class="panel panel-default">
       <div class="panel-heading">
         <strong>
           <span class="glyphicon glyphicon-th"></span>
           <span>TESTE</span>
         </strong>
       </div>
       <div class="panel-body">
         <table class="table table-striped table-bordered table-condensed">
          <thead>
           <tr>
            <th class="text-center" style="width: 50px;">#</th>
             <th>Teste</th>
             <th>Teste</th>
             <th>Teste</th>
           <tr>
          </thead>
          <tbody>
          <tbody>
         </table>
       </div>
     </div>
   </div>
   <div class="col-md-4">
      <div class="panel panel-default">
        <div class="panel-heading">
          <strong>
            <span class="glyphicon glyphicon-th"></span>
            <span>TESTE2</span>
          </strong>
        </div>
        <div class="panel-body">
          <table class="table table-striped table-bordered table-condensed">
       <thead>
         <tr>
           <th class="text-center" style="width: 50px;">#</th>
           <th>Teste2</th>
           <th>Teste2</th>
           <th>Teste2</th>
         </tr>
       </thead>
     </table>
    </div>
   </div>
  </div>
  <div class="col-md-4">
    <div class="panel panel-default">
      <div class="panel-heading">
        <strong>
          <span class="glyphicon glyphicon-th"></span>
          <span>TESTE3</span>
        </strong>
      </div>
      <div class="panel-body">
          <table class="table table-striped table-bordered table-condensed">
       <thead>
         <tr>
           <th class="text-center" style="width: 50px;">#</th>
           <th>Teste2</th>
           <th>Teste2</th>
           <th>Teste2</th>
         </tr>
       </thead>
     </table>
    </div>
  </div>
 </div>
</div>
 </div>
  <div class="row">
  </div>

<?php include_once('layouts/footer.php'); ?>
