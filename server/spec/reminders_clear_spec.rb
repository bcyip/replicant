require_relative 'spec_helper'

describe "Clear Reminders", :type=>'clear_reminders' do
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

  describe "syntax variations", :type=>'list_syntax_variation' do
    before(:each) do
      reminder_msg = "remind me to make dinner in 5 minutes"
      @chat.send_message(reminder_msg)
      delay(0.5)
    end

    describe "Valid Syntax", :type=>'valid_syntax' do
      describe "keyword: clear", :type=>'keyword_clear' do
        it "clear specific reminder" do
          delete_msg = "clear reminder 1"
          @chat.send_message(delete_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(clear_one_reminder)
        end

        it "clear all reminders" do
          delete_msg = "clear all reminders"
          @chat.send_message(delete_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(cleared_reminders)
        end

        it "clear all of reminders" do
          delete_msg = "clear all of reminders"
          @chat.send_message(delete_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(cleared_reminders)
        end

        it "clear all of my reminders" do
          delete_msg = "clear all of my reminders"
          @chat.send_message(delete_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(cleared_reminders)
        end

        it "clear of reminders" do
          delete_msg = "clear of reminders"
          @chat.send_message(delete_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(cleared_reminders)
        end

        it "clear of my reminders" do
          delete_msg = "clear of my reminders"
          @chat.send_message(delete_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(cleared_reminders)
        end

        it "clear my reminders" do
          delete_msg = "clear my reminders"
          @chat.send_message(delete_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(cleared_reminders)
        end
      end

      describe "keyword: delete", :type=>'keyword_delete' do
        it "delete specific reminder" do
          delete_msg = "delete reminder 1"
          @chat.send_message(delete_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(clear_one_reminder)
        end

        it "delete all reminders" do
          delete_msg = "delete all reminders"
          @chat.send_message(delete_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(cleared_reminders)
        end

        it "delete all of reminders" do
          delete_msg = "delete all of reminders"
          @chat.send_message(delete_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(cleared_reminders)
        end

        it "delete all of my reminders" do
          delete_msg = "delete all of my reminders"
          @chat.send_message(delete_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(cleared_reminders)
        end

        it "delete of reminders" do
          delete_msg = "delete of reminders"
          @chat.send_message(delete_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(cleared_reminders)
        end

        it "delete of my reminders" do
          delete_msg = "delete of my reminders"
          @chat.send_message(delete_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(cleared_reminders)
        end

        it "delete my reminders" do
          delete_msg = "delete my reminders"
          @chat.send_message(delete_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(cleared_reminders)
        end
      end

      describe "keyword: remove", :type=>'keyword_remove' do
        it "remove specific reminder" do
          delete_msg = "remove reminder 1"
          @chat.send_message(delete_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(clear_one_reminder)
        end

        it "remove all reminders" do
          delete_msg = "remove all reminders"
          @chat.send_message(delete_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(cleared_reminders)
        end

        it "remove all of reminders" do
          delete_msg = "remove all of reminders"
          @chat.send_message(delete_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(cleared_reminders)
        end

        it "remove all of my reminders" do
          delete_msg = "remove all of my reminders"
          @chat.send_message(delete_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(cleared_reminders)
        end

        it "remove of reminders" do
          delete_msg = "remove of reminders"
          @chat.send_message(delete_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(cleared_reminders)
        end

        it "remove of my reminders" do
          delete_msg = "remove of my reminders"
          @chat.send_message(delete_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(cleared_reminders)
        end

        it "remove my reminders" do
          delete_msg = "remove my reminders"
          @chat.send_message(delete_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(cleared_reminders)
        end
      end

      describe "keyword: forget", :type=>'keyword_forget' do
        it "forget specific reminder" do
          delete_msg = "forget reminder 1"
          @chat.send_message(delete_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(clear_one_reminder)
        end

        it "forget all reminders" do
          delete_msg = "forget all reminders"
          @chat.send_message(delete_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(cleared_reminders)
        end

        it "forget all of reminders" do
          delete_msg = "forget all of reminders"
          @chat.send_message(delete_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(cleared_reminders)
        end

        it "forget all of my reminders" do
          delete_msg = "forget all of my reminders"
          @chat.send_message(delete_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(cleared_reminders)
        end

        it "forget of reminders" do
          delete_msg = "forget of reminders"
          @chat.send_message(delete_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(cleared_reminders)
        end

        it "forget of my reminders" do
          delete_msg = "forget of my reminders"
          @chat.send_message(delete_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(cleared_reminders)
        end

        it "forget my reminders" do
          delete_msg = "forget my reminders"
          @chat.send_message(delete_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(cleared_reminders)
        end
      end
    end

    describe "Invalid Syntax", :type=>'invalid_syntax' do
      it "clear reminders 1" do
        delete_msg = "clear reminders 1"
        @chat.send_message(delete_msg)
        delay(0.5)
        expect(@chat.ws.response_msg).to eq(no_understand)
      end

      it "my reminders" do
        delete_msg = "my reminders"
        @chat.send_message(delete_msg)
        delay(0.5)
        expect(@chat.ws.response_msg).to eq(no_understand)
      end

      it "all reminders" do
        delete_msg = "all reminders"
        @chat.send_message(delete_msg)
        delay(0.5)
        expect(@chat.ws.response_msg).to eq(no_understand)
      end
    end
  end

  describe "delete varied reminders", :type=>'reminder_delete' do
    it "1 of 1 reminders deleted by ID" do
      reminder_msg = "remind me to make dinner in 5 minutes"
      @chat.send_message(reminder_msg)
      delay(0.5)
      delete_msg = "delete reminder 1"
      @chat.send_message(delete_msg)
      delay(0.5)
      expect(@chat.ws.response_msg).to eq(clear_one_reminder)
    end

    it "1 of 2 reminders deleted by ID" do
      pending('TO BE IMPLEMENTED: parsing html table response')
      fail
      reminder_msg = "remind me to make dinner in 5 minutes"
      @chat.send_message(reminder_msg)
      delay(0.5)
      reminder_msg = "remind me to eat dinner in 90 minutes"
      @chat.send_message(reminder_msg)
      delay(0.5)
      delete_msg = "delete reminder 1"
      @chat.send_message(delete_msg)
      delay(0.5)
      parse_html_table(@chat.ws.response_msg)
      expect(@chat.ws.response_msg).to eq("")
    end

    it "3rd of 5 reminders deleted by ID" do
      pending('TO BE IMPLEMENTED: parsing html table response')
      fail
      reminder_msg = "remind me to buy groceries in 5 minutes"
      @chat.send_message(reminder_msg)
      delay(0.5)
      reminder_msg = "remind me to eat dinner in 60 minutes"
      @chat.send_message(reminder_msg)
      delay(0.5)
      reminder_msg = "remind me to make dinner in 30 minutes"
      @chat.send_message(reminder_msg)
      delay(0.5)
      reminder_msg = "remind me to wash dishes in 90 minutes"
      @chat.send_message(reminder_msg)
      delay(0.5)
      reminder_msg = "remind me to go to sleep in 100 minutes"
      @chat.send_message(reminder_msg)
      delay(0.5)
      delete_msg = "delete reminder 3"
      @chat.send_message(delete_msg)
      delay(0.5)
      expect(@chat.ws.response_msg).to eq(clear_one_reminder)
      list_msg = "list reminders"
      delay(0.5)
      parse_html_table(@chat.ws.response_msg)
      expect(@chat.ws.response_msg).to eq("")
    end

    it "5th of 5 reminders deleted by ID" do
      pending('TO BE IMPLEMENTED: parsing html table response')
      fail
      reminder_msg = "remind me to buy groceries in 5 minutes"
      @chat.send_message(reminder_msg)
      delay(0.5)
      reminder_msg = "remind me to eat dinner in 60 minutes"
      @chat.send_message(reminder_msg)
      delay(0.5)
      reminder_msg = "remind me to wash dishes in 90 minutes"
      @chat.send_message(reminder_msg)
      delay(0.5)
      reminder_msg = "remind me to go to sleep in 100 minutes"
      @chat.send_message(reminder_msg)
      delay(0.5)
      reminder_msg = "remind me to make dinner in 30 minutes"
      @chat.send_message(reminder_msg)
      delay(0.5)
      delete_msg = "delete reminder 5"
      @chat.send_message(delete_msg)
      delay(0.5)
      expect(@chat.ws.response_msg).to eq(clear_one_reminder)
      list_msg = "list reminders"
      delay(0.5)
      parse_html_table(@chat.ws.response_msg)
      expect(@chat.ws.response_msg).to eq("")
    end

    it "delete reminder after it is executed (seconds)" do

    end

    it "delete reminder after it is executed (minutes)" do
      pending('TO BE IMPLEMENTED: force time to expire')
      fail
    end

    it "delete reminder after it is executed (hours)" do
      pending('TO BE IMPLEMENTED: force time to expire')
      fail
    end

    it "delete all reminders" do
      reminder_msg = "remind me to buy groceries in 5 minutes"
      @chat.send_message(reminder_msg)
      delay(0.5)
      reminder_msg = "remind me to make dinner in 30 minutes"
      @chat.send_message(reminder_msg)
      delay(0.5)
      reminder_msg = "remind me to eat dinner in 60 minutes"
      @chat.send_message(reminder_msg)
      delay(0.5)
      reminder_msg = "remind me to wash dishes in 90 minutes"
      @chat.send_message(reminder_msg)
      delay(0.5)
      reminder_msg = "remind me to go to sleep in 100 minutes"
      @chat.send_message(reminder_msg)
      delay(0.5)
      delete_msg = "delete all reminders"
      @chat.send_message(delete_msg)
      delay(0.5)
      expect(@chat.ws.response_msg).to eq(cleared_reminders)
      list_msg = "list reminders"
      @chat.send_message(list_msg)
      delay(0.5)
      expect(@chat.ws.response_msg).to eq(no_reminders)
    end

    it "delete all reminders when none exist" do
      delete_msg = "delete all reminders"
      @chat.send_message(delete_msg)
      delay(0.5)
      expect(@chat.ws.response_msg).to eq(cleared_reminders)
    end
  end

  describe "delete invalid reminders", :type=>'delete_invalid' do
    it "delete reminder by ID when none exist" do
      delete_msg = "delete reminder 1"
      @chat.send_message(delete_msg)
      delay(0.5)
      expect(@chat.ws.response_msg).to eq("There is no reminder with id 1.")
    end

    it "delete reminder by ID twice" do
      reminder_msg = "remind me to make dinner in 5 minutes"
      @chat.send_message(reminder_msg)
      delay(0.5)
      delete_msg = "delete reminder 1"
      @chat.send_message(delete_msg)
      delay(0.5)
      expect(@chat.ws.response_msg).to eq(clear_one_reminder)
      @chat.send_message(delete_msg)
      delay(0.5)
      expect(@chat.ws.response_msg).to eq("There is no reminder with id 1.")
    end
  end

end
