module Status
  class DevicesController < ApplicationController
    before_action :set_device, only: [:platform]

    def platform
      render json: @device.cli.platform
    end

    private
      def set_device
        @device = Device.find(params[:device_id])
      end
  end
end
