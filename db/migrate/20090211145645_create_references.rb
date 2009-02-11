class CreateReferences < ActiveRecord::Migration
  def self.up
    create_table :references do |t|
      t.integer :referer_id
      t.string :referer_type
      t.integer :referal_id
      t.string :referal_type

      t.timestamps
    end

    add_index :references, %w(referer_id referer_type)
    add_index :references, %w(referal_id referal_type)
  end

  def self.down
    drop_table :references
  end
end
