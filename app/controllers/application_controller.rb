class ApplicationController < ActionController::Base
    
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
end
