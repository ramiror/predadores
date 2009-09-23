require File.join(File.dirname(__FILE__), '..', 'lib', 'config')
require 'conejo'
require 'zanahoria'
require 'mundo'

describe Conejo do
  before do
    @zanahoria = Zanahoria.new
    @mundo = Mundo.new @zanahoria
    @conejo = Conejo.new @mundo
  end

  it "should eat as many carrots as there are rabbits" do
    cant_zanahorias = @zanahoria.stock
    cant_conejos = @mundo.cant_conejos
    Conejo::HAMBRE.times { @conejo.comer }
    @zanahoria.stock.should be cant_zanahorias - cant_conejos
  end

  it "should have one rabbit" do
    @mundo.cant_conejos.should be 1
  end

  it "should get older" do
    @conejo.vivir.edad.succ.should be @conejo.vivir.edad
  end

  it "should die of natural reasons" do
    otro_conejo = Conejo.new(@mundo)
    Conejo::LONGEVIDAD.times { @conejo.vivir }
    @mundo.esta_conejo?(otro_conejo).should be true
    @mundo.esta_conejo?(@conejo).should be false
  end

  it "should have a nice family" do
    @mundo.cant_conejos.should be 1
    Conejo::FERTILIDAD.times { @conejo.vivir }
    @mundo.cant_conejos.should be 2
  end
end

