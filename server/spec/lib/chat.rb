require 'websocket-client-simple'
require_relative 'websocket-client-simple-patch'

# Class intance for rspec tests
# Wrapper for websocket-client-simple gem and allow for us to make
# some modifications without having to rewrite or monkey patch the gem
class Chat
  attr_reader :ws

  URL = ENV["URL"] || "localhost"
  PORT = ENV["PORT"] || 4444

  # open websocket connection
  def initialize
    @response_msg = "no message"
    @ws = WebSocket::Client::Simple.connect "ws://#{URL}:#{PORT}"

    # places messages in readable variable when websocket responds with message
    @ws.on :message do |msg|
      @response_msg = msg.data
    end

    # actions on websocket opening
    @ws.on :open do
      @response_msg = "opened connection"
    end

    # actions on websocket closing
    @ws.on :close do |e|
      p e
      exit 1
    end

    # actions on receiving error from websocket
    @ws.on :error do |e|
      p e
    end
  end

  # send message via WebSocket
  # Params
  # - String: Message to send to websocket
  def send_message(msg)
    @ws.send msg
  end
end
