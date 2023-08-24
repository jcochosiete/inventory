# frozen_string_literal: true

module DashboardHelper
  def pretty_status(status)
    return 'Assigned' if status

    'Available'
  end

  def tabs(tools)
    if tools.instance_of? Device
      render 'relational_table', devices: @tools
    else
      render 'peripheral_table', peripherals: @tools
    end
  end
end
