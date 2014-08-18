default[:custom_layers][:rails_layer_custom][:opsworks_bundler][:manage_package] = true
default[:custom_layers][:rails_layer_custom][:apps] = ['rails_custom1']
default[:custom_layers][:rails_layer_custom][:layer_type] = 'rails-app'
default[:custom_layers][:rails_layer_custom][:rails_stack][:name] = 'apache_passenger'

default[:custom_layers][:rails_layer_custom2][:opsworks_bundler][:manage_package] = true
default[:custom_layers][:rails_layer_custom2][:apps] = ['rails_custom2']
default[:custom_layers][:rails_layer_custom2][:layer_type] = 'rails-app'
default[:custom_layers][:rails_layer_custom2][:rails_stack][:name] = 'apache_passenger'
