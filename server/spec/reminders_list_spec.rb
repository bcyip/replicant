require_relative 'spec_helper'

describe "List Reminders", :type=>'list_reminders' do
  before(:each) do
    @chat = Chat.new
    # TODO: delay in response from WebSocket
    # need to wait for response before continuing execution
    delay(0.5)
  end

  let(:no_reminders) {'You have no reminders.'}
  let(:no_understand) {"I'm sorry, I don't understand what you mean."}

  describe "syntax variations", :type=>'list_syntax_variation' do

    describe "Valid Syntax", :typ=>'valid_syntax' do

      describe "keyword: list", :type=>'keyword_list' do
        it "list reminders" do
          list_msg = "list reminders"
          @chat.send_message(list_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(no_reminders)
        end

        it "list me reminders" do
          list_msg = "list me reminders"
          @chat.send_message(list_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(no_reminders)
        end

        it "list all reminders" do
          list_msg = "list all reminders"
          @chat.send_message(list_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(no_reminders)
        end

        it "list of reminders" do
          list_msg = "list of reminders"
          @chat.send_message(list_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(no_reminders)
        end

        it "list my reminders" do
          list_msg = "list my reminders"
          @chat.send_message(list_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(no_reminders)
        end

        it "list me all reminders" do
          list_msg = "list me all reminders"
          @chat.send_message(list_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(no_reminders)
        end

        it "list me of reminders" do
          list_msg = "list me of reminders"
          @chat.send_message(list_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(no_reminders)
        end

        it "list me my reminders" do
          list_msg = "list me my reminders"
          @chat.send_message(list_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(no_reminders)
        end

        it "list me all of reminders" do
          list_msg = "list me all of reminders"
          @chat.send_message(list_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(no_reminders)
        end

        it "list me all my reminders" do
          list_msg = "list me all my reminders"
          @chat.send_message(list_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(no_reminders)
        end

        it "list me all of my reminders" do
          list_msg = "list me all of my reminders"
          @chat.send_message(list_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(no_reminders)
        end
      end

      describe "keyword: show", :type=>'keyword_show' do
        it "show reminders" do
          list_msg = "show reminders"
          @chat.send_message(list_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(no_reminders)
        end

        it "show me reminders" do
          list_msg = "show me reminders"
          @chat.send_message(list_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(no_reminders)
        end

        it "show all reminders" do
          list_msg = "show all reminders"
          @chat.send_message(list_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(no_reminders)
        end

        it "show of reminders" do
          list_msg = "show of reminders"
          @chat.send_message(list_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(no_reminders)
        end

        it "show my reminders" do
          list_msg = "show my reminders"
          @chat.send_message(list_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(no_reminders)
        end

        it "show me all reminders" do
          list_msg = "show me all reminders"
          @chat.send_message(list_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(no_reminders)
        end

        it "show me of reminders" do
          list_msg = "show me of reminders"
          @chat.send_message(list_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(no_reminders)
        end

        it "show me my reminders" do
          list_msg = "show me my reminders"
          @chat.send_message(list_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(no_reminders)
        end

        it "show me all of reminders" do
          list_msg = "show me all of reminders"
          @chat.send_message(list_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(no_reminders)
        end

        it "show me all my reminders" do
          list_msg = "show me all my reminders"
          @chat.send_message(list_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(no_reminders)
        end

        it "show me all of my reminders" do
          list_msg = "show me all of my reminders"
          @chat.send_message(list_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(no_reminders)
        end
      end

      describe "keyword: tell", :type=>'keyword_tell' do
        it "tell reminders" do
          list_msg = "tell reminders"
          @chat.send_message(list_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(no_reminders)
        end

        it "tell me reminders" do
          list_msg = "tell me reminders"
          @chat.send_message(list_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(no_reminders)
        end

        it "tell all reminders" do
          list_msg = "tell all reminders"
          @chat.send_message(list_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(no_reminders)
        end

        it "tell of reminders" do
          list_msg = "tell of reminders"
          @chat.send_message(list_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(no_reminders)
        end

        it "tell my reminders" do
          list_msg = "tell my reminders"
          @chat.send_message(list_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(no_reminders)
        end

        it "tell me all reminders" do
          list_msg = "tell me all reminders"
          @chat.send_message(list_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(no_reminders)
        end

        it "tell me of reminders" do
          list_msg = "tell me of reminders"
          @chat.send_message(list_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(no_reminders)
        end

        it "tell me my reminders" do
          list_msg = "tell me my reminders"
          @chat.send_message(list_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(no_reminders)
        end

        it "tell me all of reminders" do
          list_msg = "tell me all of reminders"
          @chat.send_message(list_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(no_reminders)
        end

        it "tell me all my reminders" do
          list_msg = "tell me all my reminders"
          @chat.send_message(list_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(no_reminders)
        end

        it "tell me all of my reminders" do
          list_msg = "tell me all of my reminders"
          @chat.send_message(list_msg)
          delay(0.5)
          expect(@chat.ws.response_msg).to eq(no_reminders)
        end
      end
    end

    describe "Invalid syntax: ", :type=>'invalid_syntax' do
      it "list reminder" do
        list_msg = "list reminder"
        @chat.send_message(list_msg)
        delay(0.5)
        expect(@chat.ws.response_msg).to eq(no_understand)
      end

      it "show reminder" do
        list_msg = "show reminder"
        @chat.send_message(list_msg)
        delay(0.5)
        expect(@chat.ws.response_msg).to eq(no_understand)
      end

      it "tell reminder" do
        list_msg = "tell reminder"
        @chat.send_message(list_msg)
        delay(0.5)
        expect(@chat.ws.response_msg).to eq(no_understand)
      end
    end
  end

  describe "Reminder Counts: ", :type=>'reminder_counts' do
    it "0 reminders" do
      list_msg = "list reminders"
      @chat.send_message(list_msg)
      delay(0.5)
      expect(@chat.ws.response_msg).to eq(no_reminders)
    end

    it "1 reminders" do
      add_msg = "remind me to make dinner in 5 minutes"
      @chat.send_message(add_msg)
      delay(0.5)
      list_msg = "list reminders"
      @chat.send_message(list_msg)
      delay(0.5)
      parse_html_table(@chat.ws.response_msg)
      pending('TO BE IMPLEMENTED: parsing html table response')
      fail
      expect(@chat.ws.response_msg).to eq("")
    end

    it "2 reminders" do
      add_msg1 = "remind me to make dinner in 5 minutes"
      @chat.send_message(add_msg1)
      add_msg2 = "remind me to eat dinner in 60 minutes"
      @chat.send_message(add_msg2)
      delay(0.5)
      list_msg = "list reminders"
      @chat.send_message(list_msg)
      delay(0.5)
      parse_html_table(@chat.ws.response_msg)
      pending('TO BE IMPLEMENTED: parsing html table response')
      fail
      expect(@chat.ws.response_msg).to eq("")
    end

    it "3 reminders" do
      add_msg1 = "remind me to make dinner in 5 minutes"
      @chat.send_message(add_msg1)
      add_msg2 = "remind me to eat dinner in 60 minutes"
      @chat.send_message(add_msg2)
      add_msg3 = "remind me to wash the dishes in 2 hours"
      @chat.send_message(add_msg3)
      delay(0.5)
      list_msg = "list reminders"
      @chat.send_message(list_msg)
      delay(0.5)
      parse_html_table(@chat.ws.response_msg)
      pending('TO BE IMPLEMENTED: parsing html table response')
      fail
      expect(@chat.ws.response_msg).to eq("")
    end

    it "maximum reminders that can be added" do
      pending("Confirm with Developer on max reminder count in list")
      fail
    end
  end

end
