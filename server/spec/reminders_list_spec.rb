require_relative 'spec_helper'

describe "List Reminders", :type=>'list_reminders' do
  before(:each) do
    @chat = Chat.new
    # TODO: delay in response from WebSocket
    # need to wait for response before continuing execution
    delay(0.5)
  end

end
