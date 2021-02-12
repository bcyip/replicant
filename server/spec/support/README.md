# Chatbot Test List

Here are a list of tests that are currently in the test suite.  Specific tests will be marked as pending when running 'rspec' and not count as failures if they are a work in progress

### Input
- Opening Statement when starting chatbot
- help message displays correct output
- closing connection
- invalid commands
  - alpha char only
  - numeric only
  - alpha + numeric

### Add reminders
- Add reminder no time unit
  - remind me to make dinner
- Add reminder in seconds unit
  - remind me to make dinner in 0 seconds
  - remind me to make dinner in 1 seconds
  - remind me to make dinner in 01 seconds
  - remind me to make dinner in 10 seconds
  - remind me to make dinner in 65 seconds
- Add reminder in minute unit
  - remind me to make dinner in 0 minutes
  - remind me to make dinner in 1 minutes
  - remind me to make dinner in 01 minutes
  - remind me to make dinner in 10 minutes
  - remind me to make dinner in 65 minutes
- Add reminder in hour unit
  - remind me to make dinner in 0 hours
  - remind me to make dinner in 1 hours
  - remind me to make dinner in 01 hours
  - remind me to make dinner in 10 hours
  - remind me to make dinner in 25 hours  
- Add reminder with seconds and minutes
  - remind me to make dinner in 0 seconds and 0 minutes
  - remind me to make dinner in 1 seconds and 0 minutes
  - remind me to make dinner in 0 seconds and 1 minutes
  - remind me to make dinner in 1 seconds and 1 minutes
  - remind me to make dinner in 00 seconds and 00 minutes
  - remind me to make dinner in 01 seconds and 0 minutes
  - remind me to make dinner in 0 seconds and 01 minutes
  - remind me to make dinner in 01 seconds and 01 minutes  
  - remind me to make dinner in 65 seconds and 0 minutes
  - remind me to make dinner in 0 seconds and 65 minutes
  - remind me to make dinner in 65 seconds and 65 minutes
- Add reminder with minutes and hours
  - remind me to make dinner in 0 minutes and 0 hours
  - remind me to make dinner in 1 minutes and 0 hours
  - remind me to make dinner in 0 minutes and 1 hours
  - remind me to make dinner in 1 minutes and 1 hours
  - remind me to make dinner in 00 minutes and 00 hours
  - remind me to make dinner in 01 minutes and 0 hours
  - remind me to make dinner in 0 minutes and 01 hours
  - remind me to make dinner in 01 minutes and 01 hours  
  - remind me to make dinner in 65 minutes and 0 hours
  - remind me to make dinner in 0 minutes and 25 hours
  - remind me to make dinner in 65 minutes and 25 hours
- Add reminder with seconds, minutes, hours


### List reminders
  - Syntax options
    - list me reminders
    - list all reminders
    - list of reminders
    - list my reminders
    - show me reminders
    - show all reminders
    - show of reminders
    - show my reminders
    - tell me reminders
    - tell all reminders
    - tell of reminders
    - tell my reminders
    - list show me reminders
    - list tell me reminders
    - show tell me reminders
    - list me all reminders
    - list me of reminders
    - list me my reminders
    - list me all of reminders
    - list me all my reminders
    - list me all of my reminders
  - Varied Reminder count
    - add 1 reminder
    - add 2 reminder
    - add 3 reminder
    - What is reminder count cap

### Clear reminders
  - with syntax variation
    - clear reminder 1
    - delete reminder 1
    - remove reminder 1
    - forget reminder 1
    - clear delete reminder 1
    - clear remove reminder 1
    - clear forget reminder 1
    - delete remove reminder 1
    - delete forget reminder 1
  - delete reminders
    - delete 0 reminders
    - delete 1 of 1 reminders
    - delete first of 2 reminders
    - delete 3rd of 5 reminders
    - delete 5th of 5 reminders
    - delete first of 5 reminders after reminder is executed
    - delete 3rd of 5 reminders after reminder is executed
    - delete 5th of 5 reminders after reminder is executed
    - delete all 5 reminders
