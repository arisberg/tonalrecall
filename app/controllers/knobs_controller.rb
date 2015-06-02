class KnobsController < ApplicationController
    before_action :require_user

    def new
        @knob = Knob.new
    end

    def create

        @knob = pedal.knob.build(knob_params)
        if @knob.save
            redirect_to '/userhome'
        else
            render "new"
        end
    end

    private

    def knob_params
        params.require(:knob).permit(:name, :value)
    end
end
