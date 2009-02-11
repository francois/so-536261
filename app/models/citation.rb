class Citation < ActiveRecord::Base
  belongs_to :referral, :polymorphic => true
  belongs_to :referrer, :polymorphic => true
end
