class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
			t.string :title
			t.text 	 :description
			t.datetime :created_at
			t.datetime :modifed_at

    end
  end
end
