module Workers
  class Manager
    def self.execute
      puts "[Jobs] Running Workers::Manager.execute()"
      Jobs::Ping.perform()
    end
  end
end