require "spec_helper"

describe Lita::Handlers::Pls, lita_handler: true do
  it { routes_command("pls").to(:pls) }

  describe "pls" do
    it "responds with k" do
      send_command("pls")
      expect(replies.last).to eq("k")
    end
  end
end
