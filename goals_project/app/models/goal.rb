class Goal < ApplicationRecord
    validates :name, :details, presence: true
    validates :status, presence: true
    validates :user_id, presence: true, uniqueness: true


    
    has_one :owner,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :User
end
