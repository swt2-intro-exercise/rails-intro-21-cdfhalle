class Paper < ApplicationRecord
    has_and_belongs_to_many :author, join_table: "authors_papers", foreign_key: "author_id"
    validates :title, presence: true
    validates :venue, presence: true
    validates :year, presence: true, numericality: true     
end
