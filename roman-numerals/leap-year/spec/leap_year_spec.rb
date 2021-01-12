require_relative 'spec_helper.rb'
require_relative './../lib/leap_year.rb'

describe LeapYear do
  before :each do
    @ly = LeapYear.new
  end

  it "accepts leap year divisible by 4" do
    expect(@ly.leap_year(2020)).to be true
  end

  it "rejects year not divisible by 100" do
    expect(@ly.leap_year(1900)).to be false
  end

  it "accepts leap year divisible by 100 and 400" do
    expect(@ly.leap_year(2000)).to be true
  end

  it "accepts leap year divisible by 100 and 400" do
    expect(@ly.leap_year(2000)).to be true
  end

  it "rejects other years" do
    expect(@ly.leap_year(2063)).to be false
  end

  it "rejects 1800" do
    expect(@ly.leap_year(1800)).to be false
  end

  it "accepts 2372" do
    expect(@ly.leap_year(2372)).to be true
  end

  it "accepts 1856" do
    expect(@ly.leap_year(1856)).to be true
  end

  it "accepts leap year divisible by 100 and 400" do
    expect(@ly.leap_year(1896)).to be true
  end

  it "accepts leap year divisible by 100 and 400" do
    expect(@ly.leap_year(2396)).to be true
  end

  it "accepts leap year divisible by 100 and 400" do
    expect(@ly.leap_year(1928)).to be true
  end

  it "identifies leap year divisible by 100 and 400" do
    expect(@ly.leap_year(1992)).to be true
  end

  it "identifies leap year divisible by 100 and 400" do
    expect(@ly.leap_year(2188)).to be true
  end

  it "rejects 1915" do
    expect(@ly.leap_year(1915)).to be false
  end

  it "rejects 2074" do
    expect(@ly.leap_year(2074)).to be false
  end
end
