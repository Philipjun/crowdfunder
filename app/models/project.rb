class Project < ActiveRecord::Base
  has_many :breakpoints
  accepts_nested_attributes_for :breakpoints, reject_if: :all_blank, allow_destroy: true
end
