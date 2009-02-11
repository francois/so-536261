class Publication < ActiveRecord::Base
  has_many :references, :as => :referer
end
