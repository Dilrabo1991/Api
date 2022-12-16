class ApplicationController < ActionController::API
    before_action :auther
    attr_reader :current_user

    private

    def auther
        @current_user = AuthorizeApiRequest.call(request.headers).result
        render json: { error: 'NO Token' }, status: 401 unless @current_user
    end
end
