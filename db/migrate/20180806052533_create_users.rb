class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name, comment: "姓名"
      t.string :address, comment: "住址"
      t.string :phone, comment: "手机"
      t.string :email, comment: "邮箱"
      t.integer :age, comment: "年龄"
      t.string :gender, comment: "性别"

      t.timestamps
    end
  end
end
