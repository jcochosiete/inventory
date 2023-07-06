class DasboardController < ApplicationController
  def index
    @devices = Device.all
    @peripherals = Peripheral.all
  end
end
