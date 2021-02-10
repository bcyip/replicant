require 'websocket-client-simple'
require_relative 'websocket-client-simple-patch'

class Chat
  attr_reader :ws

  PORT = ENV["PORT"] || 4444

  def initialize
    @response_msg = "no message"
    @ws = WebSocket::Client::Simple.connect "ws://localhost:#{PORT}"

    @ws.on :message do |msg|
      @response_msg = msg.data

    end

    @ws.on :open do
      puts "opening connection"
      @response_msg = "opened connection"
    end

    @ws.on :close do |e|
      p e
      exit 1
    end

    @ws.on :error do |e|
      p e
    end
  end

  def send_message(msg)
    @ws.send msg
  end
end
