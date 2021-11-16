class ApplicationController < ActionController::Base
    before_action :set_locale

    def sorting 
        
        if params[:category_id] != nil
            @category = Category.find(params[:category_id])
            session[:sort_prod] = 1
            redirect_to category_path(@category)
        else 
            session[:sort] = 1
            redirect_to categories_path
        end
    end

    def clear_sorting
        if params[:category_id] != nil
            @category = Category.find(params[:category_id])
            session[:sort_prod] = nil
            redirect_to category_path(@category)
        else 
            session[:sort] = nil
            redirect_to categories_path
        end
    end

    private

    def set_locale
        I18n.locale = params[:locale] || session[:locale] || I18n.default_locale
        session[:locale] = I18n.locale
    end

end
