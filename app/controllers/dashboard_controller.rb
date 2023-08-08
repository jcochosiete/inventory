# frozen_string_literal: true

class DashboardController < ApplicationController
  # constants
  DEVICES = 'devices'
  PERIPHERALS = 'peripherals'

  def index
    if (tab_param == DEVICES) || params[:tab].nil?
      @devices = Device.all
    else
      @peripherals = Peripheral.all
    end
  end

  def tab_param
    @tab_param = params[:tab]
  end
end
