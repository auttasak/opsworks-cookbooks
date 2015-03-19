

Chef::Log.debug("Configure remote Log ")
template "/etc/rsyslog.d/99-centralized-log.conf" do
  source    "99-centralized-log.erb"
  owner     'root'
  group     'root'
  mode      '0644'
  notifies  :restart, "service[rsyslog]"
  action	:create_if_missing
end
