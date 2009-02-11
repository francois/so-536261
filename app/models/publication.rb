class Publication < ActiveRecord::Base
  has_many :citations, :as => :referrer
end
