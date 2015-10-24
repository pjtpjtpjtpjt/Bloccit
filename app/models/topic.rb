class Topic < ActiveRecord::Base
has_many :sponsored_posts
has_many :posts, dependent: :destroy
has_many :labelings, as: :labelable
has_many :labels, through: :labelings
has_one :rating, as: :ratable


scope :visible_to, -> user { user ? all : where(public: true) }
scope :privately_viewable, -> user { user ? all : where(public: false) }
scope :publicly_viewable, -> user {visible_to.where(public: true) }

   validates :name, length: { minimum: 5 }, presence: true
   validates :description, length: { minimum: 15 }, presence: true


end
