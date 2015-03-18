
node[:deploy].each do |application, deploy|
  app_root = "#{deploy[:deploy_to]}/current"

  Chef::Log.debug("Setup permission 777 #{app_root}/app/storage")

  execute "chmod -R 777 #{app_root}/app/storage" do
  end
end