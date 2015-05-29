class PedalsController < ApplicationController
    def new
        @board = Board.find(params[:board_id])
        @pedal = @board.pedals.new
    end

    def create
        @board = Board.find(params[:board_id])
        @pedal = @board.pedals.build(pedal_params)
        @knob = @pedal.knobs.build(knob_params)
        render plain: knob_params
        if @pedal.save
            # redirect_to "/userhome"
        else
            # render "new"
        end
    end

    private

    def pedal_params
        params.require(:pedal).permit(:name, :brand, :effect)
    end

    def knob_params
        params.require(:knob).permit(:name, :value)
    end
end
