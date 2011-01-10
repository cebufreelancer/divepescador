class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.integer :photographer_id
      t.string :description
      t.string :attach_file_name
      t.string :attach_content_type
      t.integer :attach_file_size
      t.datetime :attach_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end
