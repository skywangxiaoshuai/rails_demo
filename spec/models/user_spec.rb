require 'rails_helper'

RSpec.describe User, :type => :model do
  it "is valid with a name, email, address, age, gender, phone" do
    expect(FactoryGirl.build(:user)).to be_valid
  end

  it "is invalid without a name" do
    # user = User.new(
    #   name: nil
    # )
    user = FactoryGirl.build(:user, name: nil)
    user.valid?
    expect(user.errors[:name]).to include("名称必须存在")
  end

  it "is invalid without a phone" do
    # user = User.new(
    #   phone: nil
    # )
    user = FactoryGirl.build(:user, phone: nil)
    user.valid?
    expect(user.errors[:phone]).to include("can't be blank")
  end

  it "is invalid with a duplicate email" do
    FactoryGirl.create(:user, email: "hello@qq.com")
    user = FactoryGirl.build(:user, email: "hello@qq.com")

    user.valid?
    expect(user.errors[:email]).to include("has already been taken")
  end

  it "return a user's name with address as string" do
    user = FactoryGirl.build(:user, name: "张三", address: "上海浦东")
    expect(user.name_with_address).to eq "张三 上海浦东"
  end

  it "does something with multiple users" do
    user1 = FactoryGirl.create(:user)
    user2 = FactoryGirl.create(:user)
    user3 = FactoryGirl.create(:user)
    expect(true).to be true
  end

  it "name is zhangsan" do
    user = FactoryGirl.create(:user, :zhangsan)
    expect(user.name).to eq("zhangsan")
    puts "user's name is #{user.name}"
  end

  it "articles count must eq 5 after a user is created" do
    user = FactoryGirl.create(:user, :with_articles)
    article = user.articles.take
    expect(user.articles.count).to eq 5
    expect(article.chapters.size).to eq 5
    puts "#{article.chapters.size}"
    puts "#{user.articles.map {|article| article.chapters}.flatten.size}"
  end

end