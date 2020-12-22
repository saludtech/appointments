class PartnersController < ApplicationController

    before_action :authenticate_admin!

    def index
        @partners = Partner.all
    end

    def show
        @partner = Partner.find(params[:id])
    end

    def new
        @partner = Partner.new
    end

    def create
        @partner = Partner.new(partner_params)
    
        if @partner.save
          redirect_to @partner
        else
          render :new
        end
    end

    def edit
        @partner = Partner.find(params[:id])
    end

    def update
        @partner = Partner.find(params[:id])

        if @partner.update(partner_params)
            redirect_to @partner
        else
            render :edit
        end
    end

    def destroy
        @partner = Partner.find(params[:id])
        @partner.destroy
    
        redirect_to root_path
      end

    private
    def partner_params
      params.require(:partner).permit(:name, :last_name, :second_last_name, :rut, :age, :gender, :profession_id)
    end
    
end
