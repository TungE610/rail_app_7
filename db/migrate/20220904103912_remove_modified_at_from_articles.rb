class RemoveModifiedAtFromArticles < ActiveRecord::Migration[7.0]
  def change
		remove_column :articles, :modifed_at
  end
end
