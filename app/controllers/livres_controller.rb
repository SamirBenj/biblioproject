class LivresController < ApplicationController
    def show 
        @livre = Livre.find(params[:id])
    end
    def index
        @leslivres = Livre.all
    end
    def edit
        @livre = Livre.find(params[:id])
    end
    def new
        @livre = Livre.new
    end
    def create
        Livre.create(livres_parametres)
        if(@livre.save)
        redirect_to livres_path           
       else
           render :new
       end
    end
    

    def update
        @livre = Livre.find(params[:id])
        if @livre.update(livres_parametres)
            redirect_to livres_path
        else
            render :edit
        end
    end
    def destroy
        @livre = Livre.find(params[:id])
        @livre.destroy
        redirect_to livres_path
    end

    private
    def livres_parametres
        params.require(:livre).permit(:titre, :auteur, :domain)
    end
end