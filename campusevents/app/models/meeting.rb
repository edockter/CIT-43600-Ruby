class Meeting < ActiveRecord::Base
    validates :name, :start_time, :end_time, presence: true
    validate :start_time_is_before_end_time

    def start_time_is_before_end_time
        if end_time < start_time
            errors.add :end_time, "- meeting must start before it can end."
        end
    end
end
