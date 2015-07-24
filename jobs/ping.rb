require 'net/ping'

module Jobs
  class Ping
    def self.perform(params = {})
      puts "[Jobs] Running Jobs::Ping.perform()"
      ping = Net::Ping::HTTP.new('104.131.209.74') # 104.131.209.74 chefbrigade.io

      (1..5).each do
        if ping.ping?
          puts "104.131.209.74 replied in #{ping.duration}"
        else
          puts "Ping to 104.131.209.74 failed!: #{ping.exception}"
        end
      end
    end
  end
end