require './app'
require_relative 'bot'
require 'facebook/messenger'

#include Facebook::Messenger

# run both Sinatra and facebook-messenger on /webhook
map("/webhook") do
  run Sinatra::Application
  run Facebook::Messenger::Server
end

# run regular sinatra for other paths (in case you ever need it)
run Sinatra::Application
