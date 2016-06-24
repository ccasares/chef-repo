# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "ccasares"
client_key               "#{current_dir}/ccasares.pem"
validation_client_name   "maroto-validator"
validation_key           "#{current_dir}/maroto-validator.pem"
chef_server_url          "https://api.chef.io/organizations/maroto"
cookbook_path            ["#{current_dir}/../cookbooks"]
