require 'sidekiq'
require 'java'
require './FetcherLibrary'

class PlainOldRuby
  include Sidekiq::Worker

  def perform(input="some input", duration_ms=1)
    fetcher = Java::fetcher.Fetcher.new
    result = fetcher.run(input, duration_ms)
    puts "Got result: #{result}"
  end
end
