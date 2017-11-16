require 'spec_helper'
require 'net/http'
require 'byebug'

describe 'Stub stripe' do


  describe 'Stripe JS' do
    it 'returns the requested asset' do
      url = URI.parse(STRIPE_JS_HOST)
      url.path = '/v1/'

      response = Net::HTTP.get(url)
      expect(response).to include 'window.Stripe'
    end
  end

  describe 'Stripe checkout' do
    it 'returns the requested asset' do
      url = URI.parse(STRIPE_CHECKOUT_HOST)
      url.path = '/v2/checkout.js'

      response = Net::HTTP.get(url)
      expect(response).to include 'StripeCheckout'
    end
  end

end



