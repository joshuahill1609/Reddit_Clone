class Link < ActiveRecord::Base
  attr_accessible :body, :title, :url, :sub_ids, :user_id

  validates :title, :url, presence: true


  has_many :sublinks
  has_many :subs, :through => :sublinks



end
