class Project < ActiveRecord::Base
  belongs_to :owner, class_name: "User"
  has_many :breakpoints
  has_many :pledges
  accepts_nested_attributes_for :breakpoints, reject_if: :all_blank, allow_destroy: true
end
