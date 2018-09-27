class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :name, comment: "名称"
      t.string :article_type, comment: "文章类型"
      t.belongs_to :user

      t.timestamps
    end
  end
end
