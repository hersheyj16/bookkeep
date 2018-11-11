class AddTotalPagesToBook < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :total_page, :integer
  end
end
