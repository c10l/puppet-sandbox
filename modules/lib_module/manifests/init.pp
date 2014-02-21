class lib_module(

  $arbitrary_parameter = 'module default',
  $hiera_param         = hiera("lib_module::arbitrary_parameter")

) {

  include lib_module::notify

}
