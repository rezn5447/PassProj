# Require config/environment.rb
require ::File.expand_path('../config/environment',  __FILE__)

set :app_file, __FILE__

configure do
  # See: http://www.sinatrarb.com/faq.html#sessions
  enable :sessions
  set :session_secret, ENV['SESSION_SECRET'] || 'this is a secret shhhhh'

  # Set the views to
  set :views, File.join(Sinatra::Application.root, "app", "views")

  # Set the public folders to
  set :comanders_folder, File.join(Sinatra::Application.root, "public", "commanders")
  # set Paperclip
  Paperclip.options[:command_path] = "/usr/local/bin/"
end

run Sinatra::Application
