require "RMagick"

module AppstormConcatenator
  include Magick
  
  class Concatenator
    def self.concatenate_images(image_1, image_2, output)
      # Create the canvas
      canvas = Image.new(620, 465) { self.background_color = "black" }

      # Images
      puts "--> Loading #{ARGV[0]}"
      img = Image.read(ARGV[0]).first

      puts "--> Loading #{ARGV[1]}"
      img2 = Image.read(ARGV[1]).first

      puts "--> Resizing images"
      img.resize! 305, 458
      img2.resize! 305, 458

      puts "--> Creating final image #{ARGV[2]}"
      canvas.composite(img, 3, 3, OverCompositeOp).composite(img2, 312, 3, OverCompositeOp).write(ARGV[2])

      puts "--> Done!"
      system "open #{ARGV[2]}" if !!(RUBY_PLATFORM =~ /darwin/)
    end
  end
end
