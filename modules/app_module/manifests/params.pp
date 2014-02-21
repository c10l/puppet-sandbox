class app_module::params {

  include lib_module
  $app_parameter = $::lib_module::lib_parameter

}
