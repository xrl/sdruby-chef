include_recipe "application"
include_recipe "git"

application "prism" do
  path "/home/ubuntu/app"
  repository "https://github.com/xrl/sdruby-app.git"

  owner "ubuntu"
  group "ubuntu"

  restart_command "bundle exec unicorn -p 3000"

  nginx_load_balancer do
    application_port 3000
    static_files ({"/assets" => "public/assets"})

    before_compile do
      raise "what"
    end
  end


end