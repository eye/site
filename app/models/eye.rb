class Eye < ActiveRecord::Base
  serialize :metadata, JSON
end
