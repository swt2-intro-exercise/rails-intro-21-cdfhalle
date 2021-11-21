class Author < ApplicationRecord
    validates :first_name, presence: true, length: {maximum: 50, minimum: 2}
    validates :last_name, presence: true, length: {maximum: 50, minimum: 2}
    validates :homepage, presence: true, length: {maximum: 50}

    def name
        first_name + ' ' + last_name      
    end
end
