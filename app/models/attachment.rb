class Attachment < ActiveRecord::Base
  belongs_to :project

  default_scope order: :sort_order

  has_attached_file :file,
    path: 'app/assets/images/project_images/:style/:id/:filename',
    url: '/project_images/:style/:id/:filename',
    styles: {
      large: ['1000x1540>', :png],
      small: ['385x250>', :png],
      thumb: ['200x130>', :png]
    },
    convert_options: {
      :small => '-background transparent -strip',
      :thumb => '-background transparent -strip'
    }
end
