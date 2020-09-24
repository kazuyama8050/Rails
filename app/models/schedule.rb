class Schedule < ApplicationRecord
    validates :name, presence: true
    validates :event_day, presence: true

    def no_expiration
        endDate.nil?
    end

    def no_expiration=(val)
        @no_expiration=val.in?([true, "1"])
    end

    before_validation do
        self.endDate=nil if @no_expiration
    end

    require "date"

    validate do
        if event_day < Date.today
            errors.add(:event_day, :event_day_too_old)
        end
    end

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
