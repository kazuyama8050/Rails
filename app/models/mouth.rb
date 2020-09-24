class Mouth < ApplicationRecord
    # belongs_to :author, class_name: "Account", foreign_key: "mine"
    validates :company, :category, :title, :content,  presence: true
    class << self
        def search(query)
            rel=order("id")
            if query.present?
                rel=rel.where("company LIKE ? OR category LIKE ?","%#{query}%","%#{query}%")
            end
            rel
        end
    end
end
