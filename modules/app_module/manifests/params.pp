class app_module::params {

  include lib_module
  $arbitrary_parameter = $::lib_module::arbitrary_parameter

}
