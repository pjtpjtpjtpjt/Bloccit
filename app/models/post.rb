class Post < ActiveRecord::Base
   belongs_to :topic
   belongs_to :user
   has_many :comments, dependent: :destroy
   has_many :labelings, as: :labelable
   has_many :labels, through: :labelings
   #has_many :rate, as: :ratable
   has_one :rating, as: :ratable
   
  default_scope { order('created_at DESC') }
   
  
    validates :title, length: { minimum: 5 }, presence: true
    validates :body, length: { minimum: 20 }, presence: true
    validates :topic, presence: true
    validates :user, presence: true
   

 

scope :ordered_by_title, -> { unscoped.order('title ASC')}
   
scope :ordered_by_reverse_created_at, -> { unscoped.order('created_at ASC')}
   

def name
   title
end
   
end
