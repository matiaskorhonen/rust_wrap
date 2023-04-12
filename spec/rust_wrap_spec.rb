# frozen_string_literal: true

RSpec.describe RustWrap do
  it "has a version number" do
    expect(RustWrap::VERSION).not_to be nil
  end

  it "wraps text by word boundaries" do
    expect(RustWrap.wrap("Ruby", 10)).to eq("Ruby")
    expect(RustWrap.wrap("Ruby Brigade", 10)).to eq("Ruby\nBrigade")
  end

  it "defaults to 80 chacacter lines" do
    eighty = "One two three four five six seven eight nine ten eleven twelve thirteen fourteen"
    expect(RustWrap.wrap(eighty, nil)).to eq(eighty)

    expect(RustWrap.wrap(eighty + "x", nil)).to(
      eq("One two three four five six seven eight nine ten eleven twelve thirteen\nfourteenx")
    )
  end
end
