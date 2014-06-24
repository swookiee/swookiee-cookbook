case node['platform_family']
when 'rhel', 'fedora'

    remote_file "#{Chef::Config[:file_cache_path]}/swookiee_latest.rpm" do
    source "https://github.com/swookiee/swookiee-packages/blob/gh-pages/swookiee-1.0.0_SNAPSHOT-latest.noarch.rpm?raw=true"
    action :create
    end

    rpm_package "swookiee" do
        source "#{Chef::Config[:file_cache_path]}/swookiee_latest.rpm"
        action :install
    end

end
