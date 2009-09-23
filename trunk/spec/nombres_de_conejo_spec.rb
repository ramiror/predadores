$:<<File.dirname(File.dirname(__FILE__)) + '/lib'
require 'nombres_de_conejo'

describe NombresDeConejo do
  #before(:each) do
  #  @nombres_de_conejo = NombresDeConejo.new
  #end

  it "should return always a different name" do
    NombresDeConejo.dame.should_not be NombresDeConejo.dame
  end

  it "should return ALWAYS a different name" do
    names = []
    100.times { names << NombresDeConejo.dame }
    names.uniq!.should be nil
  end
end

