require 'spec_helper'

describe Lita::Handlers::VancouverHappyHour, lita_handler: true do
  it { is_expected.to route_command('happyhour') }
  it { is_expected.to route_command('happyhr') }
  it { is_expected.to route_command('hh') }

  def mock(file)
    mock = File.open("spec/fixtures/#{file}.html").read
    allow(RestClient).to receive(:get) { mock }
  end

  before do
  end

  it 'queries the happyhr' do
    mock('sample')
    send_command 'hh'
    expect(replies.last).to include("Hi Michael!")
  end
end
