class UserController < ApplicationController
    def dash
        @naka = User.find(params[:id])
        @dent = Doctornew.all
    end

    def appoint
        @dentt = Doctornew.find(2)
        @usee = User.find(params[:id])
    end

    def appointt
        @dentt = Doctornew.find(1)
        @usee = User.find(params[:id])
    end

    def set
        @userr = User.find(params[:user])
        @adrian = Doctornew.find(params[:mandras])
    end

    def setna
        @setna = Pending.new(firstname: params["fname"],
                            middlename: params["mname"],
                            lastname: params["lname"],
                            contact: params["cont"],
                            adlaw: params["adlaw"],
                            mweek: params["mweek"],
                            docfirstname: params["dfirst"],
                            docmiddlename: params["dmiddle"],
                            doclastname: params["dlast"])
        @setna.save
    end

    def sett
        @userrni = User.find(params[:user])
        @kim = Doctornew.find(params[:domingo])
    end

    def settna
        @settna = Pending.new(firstname: params["fname"],
                            middlename: params["mname"],
                            lastname: params["lname"],
                            contact: params["cont"],
                            adlaw: params["adlaw"],
                            mweek: params["mweek"],
                            docfirstname: params["dfirst"],
                            docmiddlename: params["dmiddle"],
                            doclastname: params["dlast"])
        @settna.save
    end

    def mappoint
        @account = User.find(params[:id])
        @pendings = Pending.where(docfirstname: "Adrian", docmiddlename: "G", doclastname: "Mandras",
                                firstname: @account.firstname, middlename: @account.middlename, lastname: @account.lastname)
    end

    def kappoint
        @account = User.find(params[:id])
        @pendings = Pending.where(docfirstname: "Kim", docmiddlename: "G", doclastname: "Domingo",
                                firstname: @account.firstname, middlename: @account.middlename, lastname: @account.lastname)
    end


    def logout
        session.clear
        redirect_to main_path
    end

    def main
    end
    
    def login
        @user = User.find_by(username: params["user"], password: params["pass"])
        if @user
          redirect_to userdash_path(@user.id)
        else
          redirect_to main_path
        end
    end
      

    def new
    end

    def create
        @user = User.new(username: params["user"],
                        password: params["pass"],
                        firstname: params["fname"],
                        middlename: params["mname"],
                        lastname: params["lname"],
                        contact: params["cont"])
        @user.save
        redirect_to "/main"
    end
end
