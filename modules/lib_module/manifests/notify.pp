class lib_module::notify {

    if $lib_module::arbitrary_parameter == $lib_module::hiera_param {
    notify { "match":
      message => "arbitrary_parameter matches hiera_param!"
    }
  } else {
    notify { "arbitrary_parameter":
      message => "arbitrary_parameter is set to the ${lib_module::arbitrary_parameter}"
    }

    notify { "hiera_lookup":
      message => "hiera has lib_module::arbitrary_parameter set to ${lib_module::hiera_param}"
    }

    notify { "no_match":
      message => "parameters DO NOT match...",
      after   => [ Notify["arbitrary_parameter"], Notify["hiera_param"] ]
    }
  }

}
