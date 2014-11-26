case node['platform_family']
when 'rhel', 'fedora'

    remote_file "#{Chef::Config[:file_cache_path]}/swookiee.rpm" do
        source "https://github.com/swookiee/swookiee-packages/releases/download/v#{node.swookiee.rpm_version}/swookiee-#{node.swookiee.version}-v#{node.swookiee.rpm_version}.noarch.rpm"
        action :create
    end

    rpm_package "swookiee" do
        source "#{Chef::Config[:file_cache_path]}/swookiee.rpm"
        action :install
    end

end

service "swookiee" do
  supports :restart => true, :status => true
  action [:enable, :start]
end

template ::File.join("/etc/default", "swookiee") do
    source 'swookiee.erb'
    owner 'swookiee'
    group 'swookiee'
    mode '644'
    notifies :restart, resources(:service => "swookiee"), :delayed
end
