class PedalsController < ApplicationController
    def new
        @board = Board.find(params[:board_id])
        @pedal = @board.pedals.new
        @knob = @pedal.knobs.new
    end

    def create
        @board = Board.find(params[:board_id])
        @pedal = @board.pedals.build(pedal_params)
        if @pedal.save
            redirect_to "/userhome"
        else
            render "new"
        end
    end

    private

    def pedal_params
        params.require(:pedal).permit(:name, :brand, :effect, knobs_attributes: [:id, :name, :value])
    end

    # def knob_params
    #     params.require(:knob).permit(:name, :value)
    # end
end
