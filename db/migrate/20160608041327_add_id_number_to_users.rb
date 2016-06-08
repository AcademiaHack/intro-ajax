class AddIdNumberToUsers < ActiveRecord::Migration
  def change
    add_column(:users, :dni, :string)
  end
end
