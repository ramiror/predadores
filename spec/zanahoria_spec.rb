$:<<File.dirname(File.dirname(__FILE__)) + '/lib'
require 'zanahoria'

describe Zanahoria do
  before(:each) do
    @zanahoria = Zanahoria.new
  end

  it "should grow at the correct rate" do
    antes = @zanahoria.stock
    @zanahoria.vivir.stock.should be antes + @zanahoria.crecimiento
  end
end

