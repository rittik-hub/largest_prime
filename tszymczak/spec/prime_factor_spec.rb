require 'spec_helper'

describe PrimeFactor do

  it "should do it" do
    lp = PrimeFactor.new(13195)
    expect(lp.largest).to eq(29)
  end

  it "should do it again" do
    lp = PrimeFactor.new(5)
    expect(lp.largest).to eq(5)
  end

end
