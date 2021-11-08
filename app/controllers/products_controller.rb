class ProductsController < ApplicationController
    include Visible

    def show
        @category = Category.find(params[:category_id])
        @product = Product.find(params[:id])
    end

    def edit
        @category = Category.find(params[:category_id])
        @product = Product.find(params[:id])

    end

    def update 
        @category = Category.find(params[:category_id])
        @product = Product.find(params[:id])
        if @product.update(product_params)
            redirect_to [@category,@product]
        else 
            render :edit, status: :unprocessable_entity
        end
    end


    private
        def product_params
            params[:product].permit(:price, :name, :position)
        end
end
