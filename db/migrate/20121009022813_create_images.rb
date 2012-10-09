class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :project_id
      t.string :file_path
      t.string :title
      t.text :details
      t.integer :sort_order

      t.timestamps
    end
  end
end
