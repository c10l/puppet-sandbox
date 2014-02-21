class lib_module(
  $arbitrary_parameter = $lib_module::params::arbitrary_parameter
) inherits lib_module::params {
  notify { "arbitrary_parameter":
    message => "arbitrary_parameter is set to the ${arbitrary_parameter}"
  }
}
