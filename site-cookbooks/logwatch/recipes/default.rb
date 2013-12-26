#
# Cookbook Name:: logwatch
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'logwatch' do
  action :install
end

# /usr/share/logwatch/default.conf/logwatch.conf
template "/usr/share/logwatch/default.conf/logwatch.conf" do
  path "/usr/share/logwatch/default.conf/logwatch.conf"
  source "logwatch.conf.erb"
  owner "root"
  group "root"
  mode 0644
end
# /etc/cron.daily/0logwatch
