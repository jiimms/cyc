module CategoriesHelper
	def index
		@categories=Category.all
	end 
end
