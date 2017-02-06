class Event < ActiveRecord::Base
    validates :name, :start_date, :end_date, presence: true
    validate :start_is_before_end

    def start_is_before_end
        if end_date < start_date
            errors.add :end_date, "- event must start before it can end."
        end
    end
end
