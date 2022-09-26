class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 100}
    validates :category, inclusion: {in: ["Fiction", "Non-Fiction"] }
    # validates :category, inclusion: {in: ["Fiction", "Non-Fiction"], message: ": '%{value}' is neither Fiction nor Non-Fiction" }
end
