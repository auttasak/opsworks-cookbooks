
node[:deploy].each do |application, deploy|
  app_root = "#{deploy[:deploy_to]}/current"
  execute "chmod -R 777 #{app_root}/app/storage" do
  end
end