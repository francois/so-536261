class CreatePublications < ActiveRecord::Migration
  def self.up
    create_table :publications do |t|
      t.string :type
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :publications
  end
end
