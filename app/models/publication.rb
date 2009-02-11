class Publication < ActiveRecord::Base
  has_many :references, :as => :referrer
end
