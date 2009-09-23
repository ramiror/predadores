require 'tk'

class Mapa
	def self.canvas
		return @@canvas
	end

	def self.conejo

		#image = TkPhotoImage.new
		#image.file = 'cone.jpg'

		#label = TkLabel.new(@@root)
		#label.image = image
		#label.place('height' => image.height,
								#'width' => image.width,
								#'x' => 10, 'y' => 10)

		image1 = TkPhotoImage.new( file => 'cone.gif' )
		#label = TkLabel.new(@@canvas)
		#label.image image1
		#label.width image1.width
		#label.height image1.height
		#label.pack('side'=>'left', 'padx'=>10, 'pady'=>10)
	end

	def self.start
		@@root = TkRoot.new { title 'Conejolandia' }
		@@canvas = TkCanvas.new(@@root)
		@@canvas.pack
		Mapa.conejo
		Mapa.conejo
		Mapa.conejo
		Mapa.conejo
		Tk.mainloop
	end
end

Mapa.start