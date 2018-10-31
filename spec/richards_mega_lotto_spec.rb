require "spec_helper"

RSpec.describe RichardsMegaLotto do
  describe ".reset" do
    before do
      RichardsMegaLotto.configure do |config|
        config.drawing_count = 10
      end
    end

    it "resets the configuration" do
      RichardsMegaLotto.reset
      config = RichardsMegaLotto.configuration

      expect(config.drawing_count).to eq 6
    end
  end

  describe "#configure" do
    before do
      RichardsMegaLotto.configure do |config|
        config.drawing_count = 10
      end
    end

    it "returns an array with 10 elements" do
      draw = RichardsMegaLotto::Drawing.new.draw

      expect(draw).to be_a Array
      expect(draw.size).to eq 10
    end

    after do
      RichardsMegaLotto.reset
    end
  end
end
