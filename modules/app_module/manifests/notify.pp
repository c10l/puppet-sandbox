class app_module::notify {

  notify { "app_module::app_parameter":
    message => "app_module::app_parameter is set to the ${::app_module::app_parameter}"
  }

}
