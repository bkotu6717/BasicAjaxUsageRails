class ProductsController < ApplicationController
	respond_to :html, :js

	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def create
		@products = Product.all
		@product = Product.new(product_params)
		@product.save
	end

	def update
		@products = Product.all
		@product = Product.new(product_params)
		@product.save
	end

	def edit
		@product = Product.find(params[:id])
	end

	def delete
		@product = Product.find(params[:id])
	end

	def destroy
		@products = Product.all
		@product = Product.find(params[:id])
		@product.destroy
	end

	private
	def product_params
		params.require(:product).permit(:name, :price)
	end
end
