class RemoveUrlFromCars < ActiveRecord::Migration[7.0]
  def change
    remove_column :cars, :url, :string
  end
end
