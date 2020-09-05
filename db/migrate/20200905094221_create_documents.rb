class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.integer "user_id"
      t.string "file_name"
      t.string "file_type"
      t.integer "file_size"
      t.string "md5hash"
      t.integer "downloads_count", default: 0
      t.integer "article_id"
      t.string "document_name"
      t.timestamps
    end
    add_index :documents, :user_id 
    add_index :documents, :article_id
  end
end
