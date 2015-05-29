class BoardsController < ApplicationController

    def index
        @boards = Board.all
    end

    def new
        @board = Board.new
    end

    def show
        @board = Board.find(params[:id])
    end

    def create
        @board = Board.new(board_params)
        @board.setup_id(current_user)
            if @board.save
                redirect_to "/userhome"
            else
                render "new"
            end
    end

    def edit
        @board = Board.find(params[:id])
    end

    def update
        @board = Board.find(params[:id])
        if @board.update_attributes(board_params)
            redirect_to "/userhome"
        end
    end

    private

    def board_params
        params.require(:board).permit(:title, :audio, :instrument, pedals_attributes:[:id, :board_id, :name, :brand, :effect, knobs_attributes:[:name, :value]])
    end
end
