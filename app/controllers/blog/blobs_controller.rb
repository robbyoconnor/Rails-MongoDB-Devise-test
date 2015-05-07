class Blog::BlobsController < ApplicationController
    def index
       @blobs = Blog::Blob.all
    end
    
    def new
      @blob = Blog::Blob.new
    end
    
    def edit
      @blob = Blog::Blob.find(params[:id])
    end
    
    def create
      @blob = Blog::Blob.new(blob_params)
      
      if @blob.save
          redirect_to @blob
      else
          render 'new'
      end
    end
    
    def update
      @blob = Blog::Blob.find(params[:id])
      
      if @blob.update(blob_params)
        redirect_to @blob
      else
        render 'edit'
      end
    end
    
    def show
      @blob = Blog::Blob.find(params[:id])
    end
    
    def destroy
      @blob = Blog::Blob.find(params[:id])
      @blob.destroy!
      
      redirect_to blog_blobs_path
    end
    
    private
    def blob_params
      params.require(:blob).permit(:title, :body)
    end
end
