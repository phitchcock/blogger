class CreateTagging < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.references :tag, index: true
      t.references :article, index: true
    end
    add_foreign_key :taggings, :tags
    add_foreign_key :taggings, :articles
  end
end
