#!/usr/bin/env ruby
# encoding: utf-8

require "rubygems"
require "bunny"

conn = Bunny.new
conn.start

ch = conn.create_channel
q  = ch.queue("bunny.examples.hello_world", :auto_delete => true)
x  = ch.default_exchange
i  = 0
q.subscribe do |delivery_info, metadata, payload|
  puts "#{i}: Received #{payload}"
  i += 1
end

0.upto(1000) { x.publish("Hello!", :routing_key => q.name) }

sleep 10.0
conn.close
