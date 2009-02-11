class Publication < ActiveRecord::Base
  # "The Rails Way" refers to the BackgrounDRb plugin
  has_many :references, :as => :referrer, :class_name => "Citation"
  has_many :referenced, :through => :references, :source => :referrer

  # The BackgrounDRb plugin is referenced from "The Rails Way"
  has_many :referrals, :as => :referral, :class_name => "Citation"
  has_many :citations, :through => :referrals, :source => :referral
end
