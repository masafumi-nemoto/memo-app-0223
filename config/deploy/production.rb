set :stage, :production
set :rails_env, 'production'
server '54.150.34.66', user: 'ec2-user',
roles: %w{web app db}
set :ssh_options, {
 keys: [File.expand_path('~/.ssh/id_rsa.pem)')]
}




