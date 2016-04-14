require 'date'

class ObsLogger
  # Open a file in current dir to write the observations
  def self.logall(filename='obs.txt')
    File.open(filename, "w+") do |ofile|
      ofile << "#{DateTime.now}\n"

      ofile << "Arguements:\n"
      ARGV.each{|arg| ofile << "  #{arg}\n"}

      env_vars = ['RAILS_ENV', 'RBENV_ROOT', 'UMRDR_HOST','MINTER_FILE','REDIS_NS']
      ofile << "Environment:\n"
      env_vars.each { |e| ofile << "  #{e}=#{ENV[e]}\n" }

      ofile.flush
    end
  end
end
