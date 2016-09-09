require 'spec_helper'

RSpec.describe 'Correctly running checkout', :type => :aruba do
	let(:basket1) { 'FR1, AP1, FR1, CF1' }
	let(:basket2) { 'FR1, FR1' }
	let(:basket3) { 'AP1, AP1, FR1, AP1' }


	describe 'correctly adds items' do
		it { expect { run_simple('ruby checkout.rb') }.to have_output /Basket: / }
		end
end