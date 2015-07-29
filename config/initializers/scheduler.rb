require 'rufus-scheduler'

s = Rufus::Scheduler.singleton

# s.every '10s' do
#   puts "[Cron] Running Workers::Manager.execute"
#   Workers::Manager.execute
# end