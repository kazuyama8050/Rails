class Company < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :ids, presence: true

    # class << self
    #     def search(query)
    #         rel=order("id")
    #         if query.present?
    #             rel=rel.where("name LIKE ?",
    #             "%#{query}%")
    #         end
    #         rel
    #     end
    # end
end
