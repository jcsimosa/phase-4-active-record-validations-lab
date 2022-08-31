class Post < ApplicationRecord
    validates :title, presence: true 
    validates :content,length: {minimum:250}
    validates :summary, length: {maximum:250}
    validates :category,inclusion: { in: ["Fiction", "Non-Fiction"]}


    def title_is_clickbait
        if title.downcase == "True Facts"
            errors.add(:title, "You Won't Believe These True Facts") 
        end
    end
end

