class CreateFormbuilderEntryAttachments < ActiveRecord::Migration
  def change
    create_table :formbuilder_entry_attachments do |t|
      t.timestamps
    end
    add_attachment :formbuilder_entry_attachments, :upload
  end
end
