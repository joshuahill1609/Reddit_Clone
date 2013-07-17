class Sub < ActiveRecord::Base
  attr_accessible :name, :user_id, :links_attributes

  validates :name, presence: true
  validates :name, uniqueness: true
  validate :user, presence: true


  belongs_to :user
  has_many :sublinks
  has_many :links, :through => :sublinks


  accepts_nested_attributes_for :links, :reject_if => :all_blank
end


