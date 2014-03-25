require 'spec_helper'

describe GitController do

  describe "GET 'add'" do
    it "returns http success" do
      get 'add'
      response.should be_success
    end
  end

  describe "GET '.'" do
    it "returns http success" do
      get '.'
      response.should be_success
    end
  end

end
