class CreateBookmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmarks do |t|
      t.text :note
      t.integer :book_id
      t.date :entry_date
      t.integer :page
      t.integer :progess

      t.timestamps
    end
  end
end
