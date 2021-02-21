require_relative 'spec_helper'

describe "Add Reminders", :type=>'add_reminders' do

  before(:each) do
    @chat = Chat.new
    # TODO: delay in response from WebSocket
    # need to wait for response before continuing execution
    delay(0.5)
  end

  let(:expected_not_understand) {"I'm sorry, I don't understand what you mean."}
  let(:remind_me_to) {"Remind me to"}
  let(:make_dinner) {'make dinner'}
  let(:remind_announce) {"Ok, I will remind you to"}

  it "does not mention any unit of time", :type=>'invalid_syntax' do
    add_msg = "Remind me to go home"
    @chat.send_message(add_msg)
    delay(0.5)
    expect(@chat.ws.response_msg).to eq(expected_not_understand)
  end

  describe "In seconds unit", :type=>'add_seconds' do
    it "without a message", :type=>'invalid_syntax' do
      add_msg = "Remind me in 10 seconds"
      @chat.send_message(add_msg)
      delay(0.5)
      expect(@chat.ws.response_msg).to eq(expected_not_understand)
    end

    it "0 second reminder" do
      add_msg = "#{remind_me_to} #{make_dinner} in 0 seconds"
      @chat.send_message(add_msg)
      delay(0.05)
      expect(@chat.ws.response_msg).to eq("It is time to #{make_dinner}!")
    end

    it "5 second reminder" do
      add_msg = "#{remind_me_to} #{make_dinner} in 5 seconds"
      @chat.send_message(add_msg)
      delay(0.05)
      expect(@chat.ws.response_msg).to eq("#{remind_announce} #{make_dinner} in 5 seconds.")
    end

    it "leading 0 second reminder" do
      add_msg = "#{remind_me_to} #{make_dinner} in 05 seconds"
      @chat.send_message(add_msg)
      delay(0.05)
      expect(@chat.ws.response_msg).to eq("#{remind_announce} #{make_dinner} in 5 seconds.")
    end

    it "65 second reminder" do
      add_msg = "#{remind_me_to} #{make_dinner} in 65 seconds"
      @chat.send_message(add_msg)
      delay(0.05)
      expect(@chat.ws.response_msg).to eq("#{remind_announce} #{make_dinner} in 65 seconds.")
    end
  end

  describe "In minutes unit", :type=>'add_minutes' do
    it "without a message", :type=>'invalid_syntax' do
      add_msg = "Remind me in 10 minutes"
      @chat.send_message(add_msg)
      delay(0.5)
      expect(@chat.ws.response_msg).to eq(expected_not_understand)
    end

    it "0 minutes reminder" do
      add_msg = "#{remind_me_to} #{make_dinner} in 0 minutes"
      @chat.send_message(add_msg)
      delay(0.05)
      expect(@chat.ws.response_msg).to eq("It is time to #{make_dinner}!")
    end

    it "1 minutes reminder" do
      add_msg = "#{remind_me_to} #{make_dinner} in 1 minutes"
      @chat.send_message(add_msg)
      delay(0.05)
      expect(@chat.ws.response_msg).to eq("#{remind_announce} #{make_dinner} in 60 seconds.")
    end

    it "leading 0 minutes reminder" do
      add_msg = "#{remind_me_to} #{make_dinner} in 01 minutes"
      @chat.send_message(add_msg)
      delay(0.05)
      expect(@chat.ws.response_msg).to eq("#{remind_announce} #{make_dinner} in 60 seconds.")
    end

    it "65 minutes reminder" do
      add_msg = "#{remind_me_to} #{make_dinner} in 65 minutes"
      @chat.send_message(add_msg)
      delay(0.05)
      expect(@chat.ws.response_msg).to eq("#{remind_announce} #{make_dinner} in 3900 seconds.")
    end
  end

  describe "In hour unit", :type=>'add_hours' do
    it "without a message", :type=>'invalid_syntax' do
      add_msg = "Remind me in 1 hours"
      @chat.send_message(add_msg)
      delay(0.5)
      expect(@chat.ws.response_msg).to eq(expected_not_understand)
    end

    it "0 hours reminder" do
      add_msg = "#{remind_me_to} #{make_dinner} in 0 hours"
      @chat.send_message(add_msg)
      delay(0.05)
      expect(@chat.ws.response_msg).to eq("It is time to #{make_dinner}!")
    end

    it "1 hours reminder" do
      add_msg = "#{remind_me_to} #{make_dinner} in 1 hours"
      @chat.send_message(add_msg)
      delay(0.05)
      expect(@chat.ws.response_msg).to eq("#{remind_announce} #{make_dinner} in 3600 seconds.")
    end

    it "leading 0 hours reminder" do
      add_msg = "#{remind_me_to} #{make_dinner} in 01 hours"
      @chat.send_message(add_msg)
      delay(0.05)
      expect(@chat.ws.response_msg).to eq("#{remind_announce} #{make_dinner} in 3600 seconds.")
    end

    it "25 hours reminder" do
      add_msg = "#{remind_me_to} #{make_dinner} in 25 hours"
      @chat.send_message(add_msg)
      delay(0.05)
      expect(@chat.ws.response_msg).to eq("#{remind_announce} #{make_dinner} in 90000 seconds.")
    end
  end

end
