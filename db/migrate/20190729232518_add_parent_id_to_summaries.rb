class AddParentIdToSummaries < ActiveRecord::Migration[5.1]
  def change
    add_column :summaries, :parent_id, :integer
  end
end
