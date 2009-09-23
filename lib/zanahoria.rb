class Zanahoria
  @stock = 100
  @crecimiento = 20

  attr_reader :crecimiento, :stock

  def initialize stock = 100, crecimiento = 20
    @stock = stock
    @crecimiento = crecimiento
  end

  def comer cuantas
    @stock -= cuantas
    raise 'Nos quedamos sin zanahorias' if @stock < 0
  end

  def vivir
    @stock += @crecimiento
    self
  end
end
