class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.integer  :project_id
      t.string   :title
      t.text     :details
      t.integer  :sort_order
      
      t.timestamps
    end
  end
end
