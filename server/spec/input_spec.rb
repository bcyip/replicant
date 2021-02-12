require_relative 'spec_helper'

describe "Misc Input", :type=>'input_validation' do
  before(:each) do
    @chat = Chat.new
    # TODO: delay in response from WebSocket
    # need to wait for response before continuing execution
    delay(0.5)
  end

  it "Opening statment is correct" do
    expected_output = "Greetings, friend! Type <tt>help</tt> to get started."
    expect(@chat.ws.response_msg).to eq(expected_output)
  end

  it "checking the output for 'help'" do
    @chat.send_message('help')
    delay(0.5)
    expected_output = "I am a reminder bot, here to help you get organized. Here are some of the things you can ask me to do:\n\n<ul>\n  <li>Add reminders, e.g. <tt>remind me to make dinner in 5 minutes</tt>.</li>\n  <li>List reminders, e.g. <tt>show all reminders</tt>.\n  <li>Clear reminders, e.g. <tt>clear all reminders</tt> or <tt>clear reminder 3</tt>.\n</ul>\n\nAt the moment I am not very sophisticated, but maybe you can help make me better!"
    expect(@chat.ws.response_msg).to eq(expected_output)
  end

  describe "where I enter invalid commands: " do

    let(:expected_output) {"I'm sorry, I don't understand what you mean."}

    it "random alpha values" do
      @chat.send_message('something or another')
      delay(0.5)
      expect(@chat.ws.response_msg).to eq(expected_output)
    end

    it "random numeric values" do
      @chat.send_message('123465')
      delay(0.5)
      expect(@chat.ws.response_msg).to eq(expected_output)
    end

    it "random alpha & numeric values" do
      @chat.send_message('i count to 4 minutes and 5 seconds')
      delay(0.5)
      expect(@chat.ws.response_msg).to eq(expected_output)
    end

  end
end
