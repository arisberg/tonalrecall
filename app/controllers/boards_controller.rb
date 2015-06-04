class BoardsController < ApplicationController
    before_action :require_user

    def index
        @user = current_user.id
        if params[:search] && params[:search] != ""
            user = User.where(name: params[:search])
            @boards = user.first.boards
        else
            @boards = Board.where.not(user_id: @user)
        end
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
                flash[:error] = @board.errors.full_messages.to_sentence
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

    def destroy
        @board = Board.find(params[:id])
        @board.destroy
        redirect_to "/userhome"
    end

    private

    def board_params
        params.require(:board).permit(:title, :audio, :instrument, pedals_attributes:[:id, :board_id, :name, :brand, :effect, knobs_attributes:[:name, :value]])
    end
end
