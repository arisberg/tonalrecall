class PedalsController < ApplicationController
    before_action :require_user

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

    def edit
        @board = Board.find(params[:board_id])
        @pedal = @board.pedals.find(params[:id])
    end

    def update
        @board = Board.find(params[:board_id])
        @pedal = Pedal.find(params[:id])
        if @pedal.update_attributes(pedal_params)
            redirect_to "/userhome"
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
