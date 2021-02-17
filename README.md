# Replicant Chatbot Challenge

Hello. If you're reading this, it means you've made it part way through Replicant's hiring process. Congratulations and welcome! This next bit should be fun. 🙂

This repository contains a skeleton of a chatbot web app. The rest of this document describes how to run this skeleton. For your challenge, we are asking you to make certain changes to this code; the precise nature of the changes depends on the role that you're applying for. You should have received those details in a separate email; if not, reach out to your hiring manager for help.

A working copy of this project can be found at https://chatbot-challenge.dev.replicant.ai.

### Running in Docker

The easiest way to run this code is with Docker. Build the Docker image as follows:

```shell
docker build -t chatbot-challenge .
```

This will take a few minutes the first time you run it. Once the image is built, you can run it locally as follows:

```shell
docker run -p 4444:4444 chatbot-challenge
```

You should then be connect to `http://localhost:4444` and interact with the chatbot.

### Local development

To facilitate rapid local development, you can run both the server and the client in auto-reloading dev server mode. To start the server:

```shell
cd server
npm install
npm run start
```

To start the client:

```shell
cd client
npm install
npm run start
```

Once both are running, you can connect to `http://localhost:7777` (note the port!) to interact with the chatbot. Any change to the server or client code will automatically recompile and restart the appropriate process.

### Server Test List
A list of existing and pending tests can be found under `server/spec/support/README.md`

### Run Tests
Build and run the Docker image for the app as follows:

```shell
docker build -t chatbot-challenge .
docker run -p 4444:4444 chatbot-challenge
```

If this is the FIRST time running the tests open a new terminal and run the following command in chatbot-challenge/server `cd spec && bundle install`

Open a new terminal and run the following command in chatbot-challenge/server
```
rspec # run all tests
rspec spec/<file_name> # run tests in file
rspec --tag type:<value>  # run subset of tests
```

### Existing Test Files

| File                    |
| :-------------          |
| reminders_clear_spec.rb |
| reminders_list_spec.rb  |
| timer_spec.rb           |
| validation_spec.rb      |

#### Existing test subsets
| Value                                                         |  
| :-------------                                                |
| valid_syntax, invalid_syntax                                  |
| add_seconds, add_minutes, add_hours                           |   
| timer_seconds, timer_minutes, timer_hours                     |
| reminder_delete, delete_invalid                               |
| keyword_list, keyword_show, keyword_tell                      |
| reminder_counts                                               |
| keyword_clear, keyword_delete, keyword_forget, keyword_remove |
