class Article < ActiveRecord::Base
  has_many :comments


  searchable do
    text :name, boost:5 #define full text search attribute 5倍重要にする
    text :content, :publish_month #月で検索可能にする(June,July)
    #コメントのcontentを検索可能にする
    text :comments do
      comments.map(&:content)
    end
    #time :published_at
    string :publish_month
  end

  def publish_month
    published_at.strftime("%B %Y")
  end
end
