class CategoriesController < ApplicationController

    def index
        if session[:sort] == 1
            @category = Category.if_visible.sort_down
        else
            @category = Category.if_visible
        end
    end

    def show
        @category = Category.find(params[:id])
        if session[:sort_prod] == 1
            @products = @category.products.if_visible.sort_down
        else
            @products = @category.products.if_visible
        end

    end

    def edit
        @category = Category.find(params[:id])

    end

    def update 
        @category = Category.find(params[:id])
        if @category.update(category_params)
            redirect_to @category
        else 
            render :edit, status: :unprocessable_entity
        end
    end

    def send_email
        email = params[:param]
        ProductMailer.with(email: email).welcome_email.deliver_now
    end
    


    private
        def category_params
            params[:category].permit(:name, :position)
        end
end
