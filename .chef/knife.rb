current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
client_key               "#{current_dir}/test-org.pem"
validation_client_name   "test-org-validator"
validation_key           "#{current_dir}/test-org-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/xrl-test-org"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]

knife[:aws_access_key]        = ENV['AWS_ACCESS_KEY']
knife[:aws_secret_access_key] = ENV['AWS_SECRET_ACCESS_KEY']
knife[:region] = 'us-west-1'
knife[:availability_zone] = 'us-west-1b'
knife[:distro] = 'chef-full'
knife[:image] = 'ami-72072e37'
