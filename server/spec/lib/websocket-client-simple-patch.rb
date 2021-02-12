# Monkey patch to websocket-client-simple gem

module WebSocket
  module Client
    module Simple
      class Client
        # allow to read following variables
        attr_reader :response_msg
      end
    end
  end
end
