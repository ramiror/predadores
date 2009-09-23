require 'numeros_romanos'

class NombresDeConejo
  @@usados = Hash.new(0)

  @@nombres = [ "Roger", "Max", "Bugs", "Felix", 
    "Nestor", "Serafin" ]
  
  def self.dame
    nombre = @@nombres[rand(@@nombres.size)]
    numero = @@usados[nombre] += 1
    "#{nombre} #{numero.roman}"
  end
end