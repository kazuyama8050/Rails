class Study < ApplicationRecord
    validates :title, presence: true
    validates :memo, presence: true

    class << self
        def search(query)
            rel=order("id")
            if query.present?
                rel=rel.where("title LIKE ?",
                "%#{query}%")
            end
            rel
        end
    end
end
