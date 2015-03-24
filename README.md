# bugs_bunny-
A simple god script to run elastic search and rabbitmq. just run:

% script/god/run_angels.sh

After god is running, run a 'hello world' script that sends and read asynchronously 100,000 test messages:

% script/rabbitmq/hello_world.rb

before running hello world, open a web browser to rabbits management console (similar to the sidekiq web console):

http://localhost:15672/
username: guest
password: guest
