class AddImageToStocks < ActiveRecord::Migration[5.2]
  def change
    add_column :stocks, :image, :string
  end
end
