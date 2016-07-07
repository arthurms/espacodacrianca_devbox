include_recipe 'apt'

include_recipe 'ruby_build'
include_recipe 'ruby_rbenv::user'

packages = %w(build-essential patch curl libcurl3 
              libcurl3-gnutls libcurl4-openssl-dev nodejs)

packages.each do |pkg|
  package pkg
end

mysql_service 'default' do
  port '3306'
  version '5.6'
  action [:create, :start]
end

mysql_client 'default' do
  action :create
end