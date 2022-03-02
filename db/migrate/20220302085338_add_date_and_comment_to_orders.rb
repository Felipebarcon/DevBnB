class AddDateAndCommentToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :comment, :string
    add_column :orders, :starts_at, :date
  end
end
