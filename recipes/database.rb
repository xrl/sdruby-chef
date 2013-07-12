include_recipe "postgresql"
include_recipe "postgresql::server"
include_recipe "postgresql::ruby"
include_recipe "database"

conn = {:host => "127.0.0.1",
        :port => 5432,
        :username => 'postgres',
        :password => node['postgresql']['password']['postgres']}

postgresql_database_user node[:prism][:database][:username] do
  connection conn
  password node[:prism][:database][:password]
  action :create
end

postgresql_database node[:prism][:database][:name] do
  connection conn
  owner node[:prism][:database][:username]
  action :create
end
