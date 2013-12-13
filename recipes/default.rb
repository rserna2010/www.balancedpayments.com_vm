#
# Cookbook Name:: www.balancedpayments.com_VM
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "nodejs"
include_recipe "nodejs::npm"
include_recipe "git"

bash "clone repository" do
  user "vagrant"
  code <<-EOH
    git clone https://github.com/balanced/www.balancedpayments.com.git
  EOH
end