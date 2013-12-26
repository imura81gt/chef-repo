#
# Cookbook Name:: timezone
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
link "/usr/share/zoneinfo/Japan" do
  to "/etc/localtime"
  link_type :symbolic
end

