class ArticlesController < ApplicationController
    def new
    	#@article=Article.new
	end
	def create
		@article=Article.new(article_params)
		@article.save
		redirect_to @article
	end

 def show
    @article = Article.find(params[:id])
 	end
  def index
  	@articles=Article.all
  end

def destroy
	@article=Article.find(params[:id])
	 @article.destroy
	redirect_to articles_path
end
def edit
	@article=Article.find(params[:id])

	end
	def update
		@article=Article.find(params[:id])
		@article.update(article_params)
	end
	private
  def article_params
    params.require(:article).permit(:title, :description, :image)
  end

end
