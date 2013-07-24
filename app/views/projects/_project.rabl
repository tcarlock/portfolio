object @project

attributes :id, :title, :details, :primary_url, :github_url, :created_at, :updated_at

node :thumbnail_url do |project|
  "/assets/screen_caps/#{project.images.first.file_path.gsub!('.png', '_thumb.png')}"
end