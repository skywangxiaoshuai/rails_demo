require 'rails_helper'

RSpec.describe Chapter, type: :model do
  it "generates associated data from a factory" do
    chapter = FactoryGirl.create(:chapter)
    puts "哈哈哈哈哈哈"
    puts "article  is #{chapter.article}"
    puts "user is #{chapter.article.user}"
  end
end
