class app_module(

  $arbitrary_parameter = $app_module::params::arbitrary_parameter

) inherits app_module::params {

  Class["lib_module"]->Class["app_module"]
  include lib_module
  include app_module::notify

}
