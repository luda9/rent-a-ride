class AddUrlToCars < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :url, :string
  end
end
