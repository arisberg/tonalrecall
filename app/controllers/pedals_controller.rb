class PedalsController < ApplicationController
    def new
        @board = Board.find(params[:board_id])
        @pedal = Pedal.new
    end

    def create
        board = Board.find(params[:board_id])
        pedal = board.pedal.build(pedal_params)
        if pedal.save
            redirect_to "/userhome"
        else
            render "new"
        end
    end

    private

    def pedal_params
        params.require(:pedal).permit(:name, :brand, :effect, knobs_attributes: [:name, :value])
    end
end
