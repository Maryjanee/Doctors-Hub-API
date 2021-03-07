class Api::V1::DoctorsController < ApplicationController
    def index
        @doctors = Doctor.all
        if @users
            render json: @doctors
        else
            render json: "No doctors available"
        end

    end

    def create
     @doctor = Doctor.create(doctor_params)

        if doctor.save
        render json: @doctor, status: :created
        else
        render json: @doctor.errors, status: :unprocessable_entity
        end
    end

    def show
        @doctor = Doctor.find(params[:id])
        if @doctor
            render json: @doctor
        else
            render json: "This doctor doesnt exist"
        end
    end


 private
    def doctor_params
        params.permit(:name, :about, :specialization, :location, :fees, :phone)
    end

end
