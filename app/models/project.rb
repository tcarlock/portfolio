class Project < ActiveRecord::Base
  acts_as_taggable
  acts_as_taggable_on :tech, :skills

  has_many :attachments

  has_attached_file :icon,
    path: 'app/assets/images/project_images/:style/:id/:filename',
    url: '/assets/project_images/:style/:id/:filename',
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
