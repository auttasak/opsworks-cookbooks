

Chef::Log.debug("Configure remote Log ")
template "/etc/rsyslog.d/99-centralized-log.conf" do
  source    "99-centralized-log.conf.erb"
  owner     'root'
  group     'root'
  mode      '0644'
  action	:create_if_missing
end


Chef::Log.debug("Restart rsyslog")

execute "Restart rsyslog" do
  user "root"
  command "service rsyslog restart"
  only_if { ::File.exist?("/etc/rsyslog.d/99-centralized-log.conf")}
end