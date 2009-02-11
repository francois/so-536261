class CreateCitation < ActiveRecord::Migration
  def self.up
    create_table :citations do |t|
      t.integer :referrer_id
      t.string :referrer_type
      t.integer :referral_id
      t.string :referral_type

      t.timestamps
    end

    add_index :citations, %w(referrer_id referrer_type)
    add_index :citations, %w(referral_id referral_type)
  end

  def self.down
    drop_table :citations
  end
end
