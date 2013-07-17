class Link < ActiveRecord::Base
  attr_accessible :body, :title, :url, :sub_ids

  validates :title, :url, presence: true


  has_many :sublinks
  has_many :subs, :through => :sublinks



end
