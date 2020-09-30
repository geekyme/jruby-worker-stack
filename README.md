## Description

This repository is a proof-of-concept how java code could potentially be run from a sidekiq worker using [jruby](https://www.jruby.org/). This is useful in cases where we want to utilize the power of [sidekiq job processing](https://github.com/mperham/sidekiq), without rewriting our java code into ruby

## Prerequisites

Ensure you have jruby. You can get it with [rvm](https://github.com/rvm/rvm).

`rvm install jruby`

Ensure you have [docker and docker-compose](https://docs.docker.com/get-docker/).

`which docker-compose`

Compile the java code `sh jar.sh`

## Run sidekiq

1. Install sidekiq - `gem install sidekiq`

2. Run sidekiqs dependencies - `docker-compose up`

3. Run sidekiq - `sidekiq -r ./por.rb`

## Run a job

1. `irb -r ./por.rb`

2. In the interactive terminal, `PlainOldRuby.perform_async "this is my input", 5000`

3. Watch how sidekiq process the logic
