require "RMagick"

["nexly","sam","topic_flock"].each do |dir|
  if File.directory? dir
    # Loop through items in the dir
    files = Dir.entries "./#{dir}"
    fileCounter = 1
    totalFiles = files.length-2
    files.each do |f|
      if File.directory? f
        puts "Skipping directory: #{f}"
        next
      end

      if [".", "..", ".DS_Store"].index(f) == nil

        puts "Resizing file: #{f} - #{fileCounter} of #{totalFiles}"

        img = Magick::Image.read(f).first
        thumb = img.resize_to_fit(190, 115)
        # full = img.resize_to_fit(580, 580)
        thumb.write("#{f}_thumb") {self.quality = 60}
        # full.write("full/#{f}") {self.quality = 75}

        fileCounter += 1
        # move the file to processed folder
        # system("mv \"#{f}\" processed/")
      end
    end
  end
end



puts 'done'