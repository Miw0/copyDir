require 'fileutils'
require 'colorize'

class CopyDir
    def initialize(srcFolders, destFolders)
        puts "copyDir is now running...".green

        Compass.configuration.on_stylesheet_saved do
            srcFolders.each do |srcFolder|
                destFolders.each do |destFolder|
                    FileUtils.cp_r(srcFolder, destFolder)
                    puts "copy ".blue + srcFolder + "/ to " + destFolder + "/" + File.basename(srcFolder) + "/"
                end
            end
        end
    end
end