class Author < ApplicationRecord
    has_and_belongs_to_many :papers, join_table: "authors_papers", foreign_key: "paper_id"
    validates :first_name, presence: true, length: {maximum: 50, minimum: 2}
    validates :last_name, presence: true, length: {maximum: 50, minimum: 2}
    validates :homepage, presence: true, length: {maximum: 50}

    def name
        first_name + ' ' + last_name      
    end
end
