class CreateReferences < ActiveRecord::Migration
  def self.up
    create_table :references do |t|
      t.integer :referrer_id
      t.string :referrer_type
      t.integer :referral_id
      t.string :referral_type

      t.timestamps
    end

    add_index :references, %w(referrer_id referrer_type)
    add_index :references, %w(referral_id referral_type)
  end

  def self.down
    drop_table :references
  end
end
