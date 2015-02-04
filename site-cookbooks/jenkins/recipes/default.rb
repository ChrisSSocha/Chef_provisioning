#
# Cookbook Name:: jenkins
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

yum_repository 'jenkins' do
  description "Jenkins"
  baseurl "http://pkg.jenkins-ci.org/redhat"
  gpgkey 'http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key'
  action :create
end

yum_package 'jenkins'

service "jenkins" do
  action :restart
end
