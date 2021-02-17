# Chatbot Test List

Here are a list of tests that are currently in the test suite.  Specific tests will be marked as pending when running 'rspec' and not count as failures if they are a work in progress.

TODO: separate tests from unit tests and E2E tests and integrate to CI process for pre-code merge and regression run post merge

### Validations
- Opening Statement when starting chatbot
- help message displays correct output
- closing connection
  - no message sent
  - message sent set to expire after connection timeout
- invalid commands
  - empty message
  - message size too large for websocket
  - alpha char only
  - numeric only
  - alpha + numeric
- sizing
  - max out seconds response

### Add reminders
- Add reminder no time unit
  - remind me to make dinner
- Add reminder in seconds unit
  - no message only time unit
  - remind me to make dinner in 0 seconds
  - remind me to make dinner in 5 seconds
  - remind me to make dinner in 05 seconds
  - remind me to make dinner in 65 seconds
- Add reminder in minute unit
  - no message only time unit
  - remind me to make dinner in 0 minutes
  - remind me to make dinner in 1 minutes
  - remind me to make dinner in 01 minutes
  - remind me to make dinner in 65 minutes
- Add reminder in hour unit
  - no message only time unit
  - remind me to make dinner in 0 hours
  - remind me to make dinner in 1 hours
  - remind me to make dinner in 01 hours
  - remind me to make dinner in 25 hours  


### List reminders
  - Syntax options
    - valid
      - list reminders
      - list me reminders
      - list all reminders
      - list of reminders
      - list my reminders
      - list me all reminders
      - list me of reminders
      - list me my reminders
      - list me all of reminders
      - list me all my reminders
      - list me all of my reminders
      - show reminders
      - show me reminders
      - show all reminders
      - show of reminders
      - show my reminders
      - show me all reminders
      - show me of reminders
      - show me my reminders
      - show me all of reminders
      - show me all my reminders
      - show me all of my reminders
      - tell reminders
      - tell me reminders
      - tell all reminders
      - tell of reminders
      - tell my reminders
      - tell me all reminders
      - tell me of reminders
      - tell me my reminders
      - tell me all of reminders
      - tell me all my reminders
      - tell me all of my reminders
    - invalid
      - list reminder
      - show reminder
      - tell reminder
      - my reminders
      - show reminders
  - Varied Reminder count
    - 0 reminders
    - add 1 reminder
    - add 2 reminder
    - add 3 reminder
    - add 3 reminders let 1 execute
    - What is reminder count cap

### Clear reminders
  - with syntax variation
    - valid
      - clear reminder 1
      - clear all reminders
      - clear all of reminders
      - clear all of my reminders
      - clear of reminders
      - clear of my reminders
      - clear my reminders
      - delete reminder 1
      - delete all reminders
      - delete all of reminders
      - delete all of my reminders
      - delete of reminders
      - delete of my reminders
      - delete my reminders
      - remove reminder 1
      - remove all reminders
      - remove all of reminders
      - remove all of my reminders
      - remove of reminders
      - remove of my reminders
      - remove my reminders
      - forget reminder 1
      - forget all reminders
      - forget all of reminders
      - forget all of my reminders
      - forget of reminders
      - forget of my reminders
      - forget my reminders
    - invalid
      - clear reminders 1
      - my reminders
      - all reminders
  - delete reminders
    - delete 1 of 1 reminders
    - delete first of 2 reminders
    - delete 3rd of 5 reminders
    - delete 5th of 5 reminders
    - delete reminder after it is executed (seconds)
    - delete reminder after it is executed (minutes)
    - delete reminder after it is executed (hours)
    - delete all 5 reminders
    - delete all reminders when none exist
  - delete invalid reminders
    - delete 0 reminders
    - delete reminder id twice

### Reminder Timer
  - seconds
    - 5s elapsed on 10s reminder
    - 5s elapsed on reminder 10s and 20s
  - minutes
    - 1min elapsed on 5min reminder
    - 30s elapsed with 1min and 5min reminders
  - hours
    - 1min elapsed on 1hr reminder
    - 30s elapsed with 1hr and 2hr reminders
