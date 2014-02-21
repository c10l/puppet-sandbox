class lib_module(

  $lib_parameter = 'module default',

) {

  $hiera_param = hiera("lib_module::lib_parameter", "NO_HIERA_DATA_FOUND")
  include lib_module::notify

}
