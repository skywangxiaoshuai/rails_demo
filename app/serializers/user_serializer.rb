class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :phone, :email, :gender

  attribute :age do
    19
  end

  def gender
    "性别都是男"
  end

  has_many :articles, key: :test_key, virtual_value: { id: 1, name: "测试" }
  class ArticleSerialzier < ActiveModel::Serializer
    attributes :id, :name

    def name
      "测试自定义name"
    end
  end
end
