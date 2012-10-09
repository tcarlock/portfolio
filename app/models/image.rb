class Image < ActiveRecord::Base
  attr_accessible :order, :url

  belongs_to :project

  default_scope order: :sort_order
end
