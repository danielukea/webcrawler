require 'rails_helper'

RSpec.describe Url, type: :model do
  it 'should have a factory' do
    expect{ FactoryBot.create(:url) }.to change {Url.count}.by(1)
  end
end
