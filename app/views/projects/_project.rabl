object @project

attributes :id, :title, :details, :primary_url, :github_url, :created_at, :updated_at

node :thumbnail_url do |project|
  project.attachments.first.file(:thumb)
end

child :attachments do |project|
  attributes :title, :sort_order
  node(:thumbnail) { |attachment| attachment.file.url(:large) }
  node(:large) { |attachment| attachment.file.url(:large) }
end

node :skill_taggings do |project|
  project.skill_taggings.map { |tagging| tagging.tag.name }
end

node :tech_taggings do |project|
  project.tech_taggings.map { |tagging| tagging.tag.name }
end