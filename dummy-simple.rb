#!/usr/bin/env ruby

require_relative './obs-logger.rb'

ObsLogger.logall('obs-simple.txt')

# Sleep until killed.
begin
  sleep
rescue SignalException => myex
  exit(0)
end
