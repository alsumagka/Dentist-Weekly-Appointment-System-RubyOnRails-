class AdminController < ApplicationController
    def log
    end

    def login
        @doct = Doctornew.find_by(username: params["username"], password: params["pass"])
        if @doct
          redirect_to admindash_path(@doct.id)
        else
          redirect_to "/admin/log"
        end
    end

    def logout
        session.clear
        redirect_to adlog_path
    end

    def dash
        @login = Doctornew.find(params[:id])
    end

    def sched
        @edit = Doctornew.find(params[:id])
    end

    def set
        @edit = Doctornew.find(params[:id])
        @edit.update(month: params[:month],
                    week: params[:week],
                    monmor: params[:monam],
                     monaf: params[:monpm],
                     tuemor: params[:tueam],
                     tueaf: params[:tuepm],
                     wedmor: params[:wedam],
                     wedaf: params[:wedpm],
                     thurmor: params[:thuram],
                     thuraf: params[:thurpm],
                     frimor: params[:friam],
                     friaf: params[:fripm])
        redirect_to "/admin/dash/#{@edit.id}"
    end

    def naghulat
        @admin = Doctornew.find(params[:id])
        @users = Pending.where(docfirstname: @admin.firstname,
                                docmiddlename: @admin.middlename,
                                doclastname: @admin.lastname)
    end

    def approve
        @admin = Doctornew.find(params[:admin])
        @approve = Pending.find(params[:id])
        @approve.update(status: "Approved")

        redirect_to "/admin/naghulat/#{@admin.id}"
    end

    def decline
        @admin = Doctornew.find(params[:admin])
        @approve = Pending.find(params[:id])
        @approve.update(status: "Declined")

        redirect_to "/admin/naghulat/#{@admin.id}"
    end
end
