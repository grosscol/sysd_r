require_relative './obs-logger.rb'

# One shot systemd units are meant to be fire and forget.
# This is the one shot service file.  The corresponding systemd unit will invoke this file.

# Log environment etc.
ObsLogger.logall('obs-oneshot.txt')

# Other testing code goes here.
