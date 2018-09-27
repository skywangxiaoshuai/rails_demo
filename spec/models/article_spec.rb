require 'rails_helper'

RSpec.describe Article, :type => :model do
  it "does not allow duplicate article names per user" do
    user = User.create(
      name: "zhangsan",
      phone: "17521180090"
    )
    user.articles.create(
      name: "first article"
    )
    article = user.articles.new(
      name: "first article"
    )
    article.invalid?
    expect(article.errors[:name]).to include("has already been taken")
  end

  it "allow two users to share a article name" do
    user1 = User.create(
      name: "zhangsan",
      phone: "17521180090"
    )
    user2 = User.create(
      name: "zhangsan",
      phone: "17521180090"
    )

    user1.articles.create(
      name: "first article"
    )

    article = user2.articles.new(
      name: "first article"
    )

    article.valid?
    expect(article.errors[:name]).to_not include("has already been taken")
  end

  it "returns articles that match the search term" do
    user = User.create(
      name: "zhangsan",
      phone: "12312"
    )

    article1 = user.articles.create(
      name: "first article"
    )

    article2 = user.articles.create(
      name: "first article by zhangsan"
    )

    article3 = user.articles.create(
    name: "second articles"
    )

    expect(Article.search("first")).to include(article1, article2)
    expect(Article.search("first")).to_not include(article3)
  end
end
