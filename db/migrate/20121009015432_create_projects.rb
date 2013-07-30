class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :company
      t.text :details
      t.datetime :start_date
      t.string :primary_url
      t.string :github_url

      t.timestamps
    end
  end
end
