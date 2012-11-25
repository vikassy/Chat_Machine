class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.text :path
      t.text :name

      t.timestamps
    end
  end
end
