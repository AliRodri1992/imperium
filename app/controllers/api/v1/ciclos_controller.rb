module Api
  module V1
    class CiclosController < ApplicationController
      before_action :set_ciclo, only: [:edit, :show, :update, :destroy]

      def index
        @ciclos = Ciclo.all
        render json: @ciclos
      end

      def show
        render json: @ciclo
      end

      def new

      end

      def edit

      end

      def create

      end

      def update

      end

      def destroy

      end

      private
      def set_ciclo
        @ciclo = Ciclo.find(params[:id])
      end
    end
  end
end