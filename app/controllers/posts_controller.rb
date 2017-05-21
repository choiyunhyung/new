class PostsController < ApplicationController
  def index
    @posts = Post.all #게시글의 모든것을 가져와
    @user_email = ""
    unless session[:user_id].nil?
      @user_email=User.find(session[:user_id]).email
    end
  end
  
  def show
    #게시글 상세보기
    @post = Post.find(params[:id])
    @comments = @post.comments
  end
  
  def new
    #작성하기위해 폼을 제공해주는 부분
  end
  
  def create
    #실제 디비에 저장되는 프로세스
    post = Post.new #하나의게시글을 새로 만들꺼야
    post.title = params[:title]
    post.content = params[:content]
    post.image = params[:pic]
    post.save #위의 내용을 저장할거얌
    
    redirect_to root_url
  end
  
  #게시글 수정하기
  def edit
    @post = Post.find(params[:id])
  end
  
  
  #특정 게시글 수정 프로세스
  def update
    post = Post.find(params[:id])
    post.title =params[:title]
    post.content =params[:content]
    post.save
    redirect_to root_url
  end
  
  def destroy
  #특정 게시글 삭제
  post = Post.find(params[:id])
  post.destroy
  redirect_to root_url
  end
  
  
end
