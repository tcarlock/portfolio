class Project < ActiveRecord::Base
  acts_as_taggable
  acts_as_taggable_on :tech, :skills

  has_many :images
end
