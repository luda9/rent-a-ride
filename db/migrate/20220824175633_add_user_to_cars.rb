class AddUserToCars < ActiveRecord::Migration[7.0]
  def change
    add_reference :cars, :user_id, foreign_key: true
  end
end
