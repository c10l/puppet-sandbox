class app_module::notify {

  notify { "app_module::arbitrary_parameter":
    message => "app_module::arbitrary_parameter is set to the ${::app_module::arbitrary_parameter}"
  }

}
