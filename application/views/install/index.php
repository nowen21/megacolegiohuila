<!DOCTYPE html>
<html>
  <head>
    <title>Instalación de Software Escolar</title>
    <meta charset="utf-8">
    <meta content="ie=edge" http-equiv="x-ua-compatible">
    <meta content="width=device-width, initial-scale=1" name="viewport">
    <link href="style/cms/favicon.png" rel="shortcut icon">
    <link href="style/cms/apple-touch-icon.png" rel="apple-touch-icon">
    <link href="https://fonts.googleapis.com/css?family=Rubik:300,400,500" rel="stylesheet" type="text/css">
    <link href="style/cms/bower_components/select2/dist/css/select2.min.css" rel="stylesheet">
    <link href="style/cms/bower_components/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
    <link href="style/cms/bower_components/dropzone/dist/dropzone.css" rel="stylesheet">
    <link href="style/cms/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="style/cms/bower_components/fullcalendar/dist/fullcalendar.min.css" rel="stylesheet">
    <link href="style/cms/bower_components/perfect-scrollbar/css/perfect-scrollbar.min.css" rel="stylesheet">
  <link href="style/cms/icon_fonts_assets/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">
    <link href="style/cms/icon_fonts_assets/picons-thin/style.css" rel="stylesheet">
    <link href="style/cms/css/main.css?version=3.3" rel="stylesheet">
  </head>
  <body class="auth-wrapper login" style="background: url('uploads/bglogin.jpg');background-size: cover;background-repeat: no-repeat;">
      <div class="auth-box-w wider">
        <div class="logo-wy">
          <a href="<?php echo base_url();?>"><img alt="" src="uploads/logo-color.png" width="35%"></a>
        </div>
          <?php echo form_open(base_url() . 'index.php?install/setup' , array('enctype' => 'multipart/form-data'));?>
      <div class="steps-w">
        <div class="step-triggers">
          <a class="step-trigger active" href="#stepContent1">PASO 1</a><a class="step-trigger" href="#stepContent2">PASO 2</a><a class="step-trigger" href="#stepContent3">PASO 3</a>
        </div>
        <div class="step-contents">
          <div class="step-content active" id="stepContent1">
            <div class="row">
      <h5 class="form-header">
       Iniciando la Instalación del Software Academico...
      </h5>
      <p>
        Gracias por adquirir la plataforma escolar 2019 || Optimización Mega Inventarios Centro América <br> <br> Antes de continuar porfavor vea que su servidor cuenta con las tres archivos solicitados estén configurados debidamente <b> Los tres archivos son Necesarios</b> 
      </p>
      <div class="table-responsive" style="margin: 0 auto; text-align:left">
      <table class="table table-lightbor table-lightfont">
        <tr>      
        <td>
                                  <?php
                                            if (is_writable('./application/config/database.php')):?>
                                                         <strong> Requerido:</strong> <span style="color:green">- application/config/database.php configurado con éxito</span> <i class="picons-thin-icon-thin-0154_ok_successful_check" style="vertical-align:middle;font-size:18px;color:green"></i>
                                        <?php
                                            else:?>
         <strong> Requerido:</strong> <span style="color:red">- application/config/database.php to be writtable</span> <i class="picons-thin-icon-thin-0153_delete_exit_remove_close" style="vertical-align:middle;font-size:18px;color:red"></i>
                                        <?php endif;?>
        </td>
        </tr>
        <tr>      
        <td>
                                    <?php
                                            if (is_writable('./application/config/routes.php')):?>
         <strong> Requerido:</strong> <span style="color:green">- application/config/routes.php configurado con éxito</span> <i class="picons-thin-icon-thin-0154_ok_successful_check" style="vertical-align:middle;font-size:18px;color:green"></i>
                                        <?php
                                            else:?>
                                                         <strong> Required:</strong> <span style="color:red">- application/config/routes.php configurado con éxito</span> <i class="picons-thin-icon-thin-0153_delete_exit_remove_close" style="vertical-align:middle;font-size:18px;color:red"></i>
                                        <?php endif;?>

</td>
        </tr>
        <tr>      
        <td>
                            <?php
                                if (in_array  ('curl', get_loaded_extensions())):?>
 <strong> Requerido:</strong> <span style="color:green">- php CURL function enabled</span> <i class="picons-thin-icon-thin-0154_ok_successful_check" style="vertical-align:middle;font-size:18px;color:green"></i>
                                        <?php
                                            else:?>
                                                 <strong> Requerido:</strong> <span style="color:red">- php CURL función habilitada</span> <i class="picons-thin-icon-thin-0153_delete_exit_remove_close" style="vertical-align:middle;font-size:18px;color:red"></i>
                                        <?php endif;?>
        </td>
        </tr>
      </table>
      </div>
      <legend><span>Verificaión de Licencia</span></legend>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for=""> Usuario*</label><input class="form-control" placeholder="Usuario" required="" name="code_username" type="text">
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="">Licencia*</label><input class="form-control" placeholder="Licencia" name="purchase_code" required="" required type="text">
                </div>
              </div>
            </div>
            <div class="form-buttons-w text-right">
              <a class="btn btn-primary step-trigger-btn" href="#stepContent2"> Continuar</a>
            </div>
          </div>
          <div class="step-content" id="stepContent2">
            <div class="row">
              <legend><span>Configuración de Base de Datos</span></legend>
        <p>Es necesario que previamente usted haya creado una base de datos y escriba la información correctamente.
              <div class="col-sm-6">
                <div class="form-group">
                  <label for=""> Base de Datos*</label><input class="form-control" name="database" required placeholder="Base de Datos" type="text">
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="">Servidor*</label><input class="form-control" placeholder="Servidor" name="hostname" type="text">
                </div>
              </div>
        <div class="col-sm-6">
                <div class="form-group">
                  <label for=""> Nombre*</label><input class="form-control" required placeholder="Nombre" name="dbusername" type="text">
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="">Clave*</label><input class="form-control" placeholder="Clave" name="dbpassword" required type="password">
                </div>
              </div>
            </div>
            <div class="form-buttons-w text-right">
              <a class="btn btn-primary step-trigger-btn" href="#stepContent3"> Continuar</a>
            </div>
          </div>
          <div class="step-content" id="stepContent3">
      <legend><span>Configuración de la Plataforma</span></legend>
            <div class="row">
      <div class="form-group col-sm-6">
      <label class="col-form-label" for=""> Nombre del Sistema</label>
        <div class="input-group">
        <div class="input-group-addon">
          <i class="picons-thin-icon-thin-0047_home_flat"></i>
        </div>
        <input class="form-control" placeholder="Nombre de Sistema" name="system_name" required type="text">
        </div>
      </div>
      <div class="form-group col-sm-6">
      <label class="col-form-label" for=""> Institución Educativa</label>
        <div class="input-group">
        <div class="input-group-addon">
          <i class="picons-thin-icon-thin-0003_write_pencil_new_edit"></i>
        </div>
        <input class="form-control" placeholder="Institución Educativa" name="system_title" required type="text">
        </div>
        </div>
        <div class="form-group col-sm-6">
        <label class="col-form-label" for=""> Idioma</label>
          <div class="input-group">
          <div class="input-group-addon">
            <i class="picons-thin-icon-thin-0307_chat_discussion_yes_no_pro_contra_conversation"></i>
          </div>
          <select class="form-control" name="I" required="">
                <option value="">Seleccionar</option>
             
                <option value="spanish">Spanish</option>
              
          </select>
        </div>
        </div>
      <div class="form-group col-sm-6">
      <label class="col-form-label" for=""> Moneda</label>
        <div class="input-group">
        <div class="input-group-addon">
          <i class="picons-thin-icon-thin-0406_money_dollar_euro_currency_exchange_cash"></i>
        </div>
        <input class="form-control" placeholder="Q" name="currency" type="text">
        </div>
        </div>
        <div class="form-group col-sm-12">
        <label class="col-form-label" for=""> Apariencia</label>
          <div class="input-group">
          <div class="input-group-addon">
            <i class="picons-thin-icon-thin-0307_chat_discussion_yes_no_pro_contra_conversation"></i>
          </div>
          <select class="form-control" name="theme" required="">
               
			   <option value="">Seleccionar Color</option>
				<option value="success">Predeterminado</option>
			   <option value="red">Rojo</option>
                <option value="blue">Azul</option>
                <option value="yellow">Amarillo</option>
                                <option value="main">Verde</option>
          </select>
        </div>
        </div>
                <div class="col-sm-6">
                <div class="form-group">
                  <label for=""> Usuario Administrador*</label><input class="form-control" required placeholder="Usuario Administrador" name="admin" type="text">
                </div>
              </div>
                    <div class="col-sm-6">
                <div class="form-group">
                  <label for=""> Clave Administrador*</label><input class="form-control" required placeholder="Clave Administrador" name="adminpass" type="password">
                </div>
              </div>
                          <div class="form-buttons-w text-right">
                             <button class="btn btn-primary" type="submit">Finalizar Instalación</button>
                          </div>
          </div>
        </div>
      </div>
         <?php echo form_close();?>
      </div>
  <script src="style/cms/bower_components/jquery/dist/jquery.min.js"></script>
    <script src="style/cms/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
    <script src="style/cms/bower_components/moment/moment.js"></script>
    <script src="style/cms/bower_components/chart.js/dist/Chart.min.js"></script>
    <script src="style/cms/bower_components/select2/dist/js/select2.full.min.js"></script>
    <script src="style/cms/bower_components/bootstrap-validator/dist/validator.min.js"></script>
    <script src="style/cms/bower_components/perfect-scrollbar/js/perfect-scrollbar.jquery.min.js"></script>
    <script src="style/cms/bower_components/tether/dist/js/tether.min.js"></script>
    <script src="style/cms/bower_components/bootstrap/js/dist/util.js"></script>
    <script src="style/cms/bower_components/bootstrap/js/dist/alert.js"></script>
    <script src="style/cms/bower_components/bootstrap/js/dist/button.js"></script>
    <script src="style/cms/bower_components/bootstrap/js/dist/carousel.js"></script>
    <script src="style/cms/bower_components/bootstrap/js/dist/collapse.js"></script>
    <script src="style/cms/bower_components/bootstrap/js/dist/dropdown.js"></script>
    <script src="style/cms/bower_components/bootstrap/js/dist/modal.js"></script>
    <script src="style/cms/bower_components/bootstrap/js/dist/tab.js"></script>
    <script src="style/cms/bower_components/bootstrap/js/dist/tooltip.js"></script>
    <script src="style/cms/bower_components/bootstrap/js/dist/popover.js"></script>
  <script src="style/cms/js/main.js?version=3.3"></script>

<script src="<?php echo base_url();?>style/cms/js/toastr.js"></script>

<?php if ($this->session->flashdata('flash_message') != ""):?>

<script type="text/javascript">
	toastr.success('<?php echo $this->session->flashdata("flash_message");?>');
</script>

<?php endif;?>

<?php if ($this->session->flashdata('error_message') != ""):?>

<script type="text/javascript">
	toastr.error('<?php echo $this->session->flashdata("error_message");?>');
</script>

<?php endif;?>

  </body>
</html>