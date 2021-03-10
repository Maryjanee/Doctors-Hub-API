module Authenticable
    
    def current_user
        return @current_user if @current_user
        header = request.headers['Authorization']
        return nil if header.nil?
        decoded = JsonWebToken.decode(header)
        @current_user = User.find(decoded[:user_id])
     rescue
        ActiveRecord::RecordNotFound
    end

    def logged_in
        if !current_user.nil?
            render json: "You are not logged in, please do so!"
        end

    end

    def set_user
        @user = User.find(params[:id])
    end
    
    def check_owner
        head :forbidden unless @user.id == current_user&.id
    end
end