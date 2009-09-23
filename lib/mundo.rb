class Mundo
  def initialize zanahoria
    @conejos = []
    @zanahoria = zanahoria
  end

  def poner_conejo conejo
    conejo.set_zanahoria @zanahoria
    @conejos << conejo
  end

  def cant_conejos
    @conejos.size
  end

  def quitar_conejo conejo
    @conejos.delete_if { |item| item == conejo }
  end

  def esta_conejo? conejo
    @conejos.include? conejo
  end
end