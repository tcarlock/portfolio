module ProjectsHelper
  def display_tags(project, context)
    out = ""
    
    project.send("#{context.to_s}").each do |tag|
      out << "<li class='tag'>#{tag.name}</li>"
    end
    
    raw out
  end  
end
