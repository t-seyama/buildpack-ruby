require 'spec_helper'

describe "Multiple Gemfiles" do
  it "should deploy" do
    app = Hatchet::Runner.new("multiple-gemfiles")
    app.setup!
    app.set_config("BUNDLE_GEMFILE" => "different.Gemfile")
    app.deploy do |app|
      expect(app).to be_deployed
    end
  end
end
