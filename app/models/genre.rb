class Genre < ApplicationRecord
  has_many :products, dependent: :destroy

  scope :search, -> ( word ){
        where("name like :q ", q: "#{word}") if word.present?
  }
  validates :name, presence:true, uniqueness:true
end
