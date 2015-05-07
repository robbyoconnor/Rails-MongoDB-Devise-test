class Blog::BlobsController < ApplicationController
    def index
       @blobs = Blog::Blob.all
    end
    
    def new
      @blob = Blog::Blob.new
    end
    
    def create
      @blob = Blog::Blob.new(blob_params)
      
      if @blob.save
          redirect_to @blob
      else
          render 'new'
      end
    end
    
    def show
      @blob = Blog::Blob.find(params[:id])
    end
    
    private
    def blob_params
      params.require(:blob).permit(:title, :body)
    end
end
