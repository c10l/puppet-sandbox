class lib_module::notify {

  if $lib_module::lib_parameter == $lib_module::hiera_param {
    notify { "match":
      message => "lib_parameter matches hiera_param!"
    }
  } else {
    notify { "lib_parameter":
      message => "lib_parameter is set to the ${lib_module::lib_parameter}"
    }

    notify { "hiera_lookup":
      message => "hiera has lib_module::lib_parameter set to ${lib_module::hiera_param}"
    }

    notify { "no_match":
      message => "parameters DO NOT match...",
      require => [ Notify["lib_parameter"], Notify["hiera_lookup"] ]
    }
  }

}
