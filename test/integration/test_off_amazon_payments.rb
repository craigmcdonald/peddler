require 'integration_helper'
require 'mws/off_amazon_payments'

class OffAmazonPaymentsTest < IntegrationTest
  def test_gets_service_status
    clients.each do |client|
      res = client.get_service_status
      refute_empty res.parse
    end
  end
end
