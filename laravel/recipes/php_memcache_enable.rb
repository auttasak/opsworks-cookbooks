# Enable php module. Ubuntu 14.04 ONLY

package_name = "php5-memcache"
module_name = "memcache"


# Place enable the module if required and restart apache
case node[:platform]
when "debian","ubuntu"

  
  Chef::Log.debug("About to install #{package_name}")

  package "#{package_name}" do
  	action :install
  end


  Chef::Log.debug("About to enable module #{module_name}")

  execute "enable_#{module_name}" do
    user "root"
    command "php5enmod #{module_name} && service apache2 restart"
    only_if { ::File.exist?("/etc/php5/mods-available/#{module_name}.ini")}
  end
end
