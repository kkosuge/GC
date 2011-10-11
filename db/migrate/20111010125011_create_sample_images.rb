class CreateSampleImages < ActiveRecord::Migration
  def change
    create_table :sample_images do |t|
      t.binary :image
      t.string :mime_type
      t.string :link
      t.string :title

      t.timestamps
    end
  end
end
