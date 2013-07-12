include_recipe "application"
include_recipe "git"
include_recipe "runit"

application "prism" do
  path "/home/ubuntu/app"
  repository "https://github.com/xrl/sdruby-app.git"

  owner "ubuntu"
  group "ubuntu"

  rails do
    db_name = node[:prism][:database][:name]
    db_user = node[:prism][:database][:username]
    db_pwd  = node[:prism][:database][:password]

    database do
      adapter  'postgresql'
      host     'localhost'
      database db_name
      username db_user
      password db_pwd
    end

  end

  unicorn do
    port "3000"
  end

  nginx_load_balancer do
    application_port 3000
    static_files ({"/assets" => "public/assets"})
    hosts [node]
  end

end