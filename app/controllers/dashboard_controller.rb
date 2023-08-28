# frozen_string_literal: true

class DashboardController < ApplicationController
  # constants
  DEVICES = 'devices'
  PERIPHERALS = 'peripherals'

  def index
    @tools = if (tab_param == DEVICES) || params[:tab].nil?
               Device.all
             else
               Peripheral.all
             end
  end

  def tab_param
    @tab_param = params[:tab]
  end
end
