class Report < ApplicationRecord
  belongs_to :report_category

  belongs_to :user
end
