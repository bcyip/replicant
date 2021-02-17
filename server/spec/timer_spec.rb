require_relative 'spec_helper'

describe "Reminder Timers: ", :type=>'timer_reminders' do
  before(:each) do
    @chat = Chat.new
    # TODO: delay in response from WebSocket
    # need to wait for response before continuing execution
    delay(0.5)
  end

  let(:cleared_reminders) {'Ok, I have cleared all of your reminders.'}
  let(:clear_one_reminder) {'Ok, I will not remind you to make dinner.'}
  let(:no_understand) {"I'm sorry, I don't understand what you mean."}
  let(:no_reminders) {"You have no reminders."}
  let(:list_message) {"List reminders"}

  describe "seconds", :type=>'timer_seconds' do
    it "5s elapsed on 10s reminder" do
      pending("TO BE IMPLEMENTED: parsing html table response")
      fail
      add_msg = "Remind me to make dinner in 10s"
      @chat.send_message(add_msg)
      delay(4)
      @chat.send_message(list_message)
      delay(0.5)
      parse_html_table(@chat.ws.response_msg)
    end

    it "2 reminders with 10s and 20s" do
      pending("TO BE IMPLEMENTED: parsing html table response")
      fail
      add_msg = "Remind me to make dinner in 20s"
      @chat.send_message(add_msg)
      add_msg = "Remind me to make dinner in 10s"
      @chat.send_message(add_msg)
      delay(4)
      @chat.send_message(list_message)
      delay(0.5)
      parse_html_table(@chat.ws.response_msg)
    end
  end

  describe "minutes", :type=>'timer_seconds' do
    it "1min elapsed on 5min reminder" do
      pending("TO BE IMPLEMENTED: parsing html table response")
      fail
      add_msg = "Remind me to make dinner in 10s"
      @chat.send_message(add_msg)
      delay(59)
      @chat.send_message(list_message)
      delay(0.5)
      parse_html_table(@chat.ws.response_msg)
    end

    it "30s elapsed with 1min and 5min reminders" do
      pending("TO BE IMPLEMENTED: parsing html table response")
      fail
      add_msg = "Remind me to make dinner in 1min"
      @chat.send_message(add_msg)
      add_msg = "Remind me to make dinner in 5min"
      @chat.send_message(add_msg)
      delay(4)
      @chat.send_message(list_message)
      delay(0.5)
      parse_html_table(@chat.ws.response_msg)
    end
  end

  describe "hours", :type=>'timer_seconds' do
    it "1min elapsed on 1hr reminder" do
      pending("TO BE IMPLEMENTED: parsing html table response")
      fail
      add_msg = "Remind me to make dinner in 1 hour"
      @chat.send_message(add_msg)
      delay(59)
      @chat.send_message(list_message)
      delay(0.5)
      parse_html_table(@chat.ws.response_msg)
    end

    it "30s elapsed with 1hr and 2hr reminders" do
      pending("TO BE IMPLEMENTED: parsing html table response")
      fail
      add_msg = "Remind me to make dinner in 1 hour"
      @chat.send_message(add_msg)
      add_msg = "Remind me to make dinner in 2 hour"
      @chat.send_message(add_msg)
      delay(4)
      @chat.send_message(list_message)
      delay(0.5)
      parse_html_table(@chat.ws.response_msg)
    end
  end
end
