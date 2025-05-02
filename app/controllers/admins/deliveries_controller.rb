class Admins::DeliveriesController < Admins::ApplicationController
  def index
    @deliveries = Delivery.default_order
  end
end
