class HomeController< ApplicationController
    def index
        @leslivres = Livre.all
        @users = User.all
    end

    
end