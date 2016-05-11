require 'date'

class ObsLogger
  # Open a file in current dir to write the observations
  def self.logall(filename='obs.txt')
    File.open(filename, "w+") do |ofile|
      ofile << "#{DateTime.now}\n"

      ofile << "Arguements:\n"
      ARGV.each{|arg| ofile << "  #{arg}\n"}

      ofile << "Environment:\n"
      ENV.each{|e| ofile << e}

      ofile.flush
    end
  end
end
