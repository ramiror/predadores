require File.join(File.dirname(__FILE__), 'config')
require 'nombres_de_conejo'
require 'animal'

class Conejo < Animal
  FERTILIDAD = 4
  HAMBRE = 2
  LONGEVIDAD = 30

  attr_reader :edad, :nombre

  def initialize mundo
    super
    @nombre = NombresDeConejo.dame
    @falta_para_comer = HAMBRE
    @falta_para_procrear = FERTILIDAD
    @mundo = mundo
    mundo.poner_conejo self
  end

  def set_zanahoria zanahoria
    @zanahoria = zanahoria
  end

  def vivir
    envejecer
    comer
    procrear
    self
  end

  def envejecer
    @edad += 1
    morir if @edad == LONGEVIDAD
    self
  end

  def comer
    @falta_para_comer -= 1
    if @falta_para_comer == 0
      @zanahoria.comer 1
      @falta_para_comer = HAMBRE
    end
    self
  end

  def procrear
    @falta_para_procrear -= 1
    if @falta_para_procrear == 0
      Conejo.new @mundo
      @falta_para_procrear = FERTILIDAD
    end
    self
  end

  def morir
    @mundo.quitar_conejo self
    self
  end
end