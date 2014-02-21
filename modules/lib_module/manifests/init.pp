class lib_module(

  $arbitrary_parameter = $lib_module::params::arbitrary_parameter

) inherits lib_module::params {

  notify { "arbitrary_parameter":
    message => "arbitrary_parameter is set to the ${arbitrary_parameter}"
  }

  $hiera_param = hiera("lib_module::arbitrary_parameter")
  notify { "hiera_lookup":
    message => "hiera has lib_module::arbitrary_parameter set to ${hiera_param}"
  }

  if $arbitrary_parameter == $hiera_param {
    notify { "match":
      message => "arbitrary_parameter matches hiera_param!"
    }
  } else {
    notify { "no_match":
      message => "parameters DO NOT match..."
    }
  }

}
