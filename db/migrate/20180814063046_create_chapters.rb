class CreateChapters < ActiveRecord::Migration[5.1]
  def change
    create_table :chapters do |t|
      t.string :name
      t.string :comment
      t.integer :size
      t.references :article

      t.timestamps
    end
  end
end
