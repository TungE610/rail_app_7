class AddUpdatedAtToArticles < ActiveRecord::Migration[7.0]
  def change
		add_column :articles, :updated_at, :timestamps
  end
end
