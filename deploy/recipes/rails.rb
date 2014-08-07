include_recipe 'deploy'

node[:deploy].each do |application, deploy|

  if !node[:custom_layer][node[:opsworks][:instance][:layers].first][:apps].include?(application)
    Chef::Log.debug("Skipping deploy::rails application #{application} as it is not a Rails app")
    next
  end

  opsworks_deploy_dir do
    user deploy[:user]
    group deploy[:group]
    path deploy[:deploy_to]
  end

  opsworks_rails do
    deploy_data deploy
    app application
  end

  opsworks_deploy do
    deploy_data deploy
    app application
  end
end
