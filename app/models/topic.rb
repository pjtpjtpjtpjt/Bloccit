class Topic < ActiveRecord::Base
has_many :sponsored_posts
has_many :posts, dependent: :destroy
has_many :labelings, as: :labelable
has_many :labels, through: :labelings
# has_many :rates, as: :ratable
# has_many :ratings, through: :rates
has_one :rating, as: :ratable



   validates :name, length: { minimum: 5 }, presence: true
   validates :description, length: { minimum: 15 }, presence: true


end
