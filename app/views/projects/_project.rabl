object @project

attributes :id, :title, :details, :primary_url, :github_url, :start_date

node :display_date do |project|
  project.start_date.strftime("%B %Y")
end

node :thumbnail_url do |project|
  if project.attachments.count > 0
    project.attachments.first.file(:large)
  else
    ""
  end
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