class ComicBooksController < ApplicationController

  def index
    @comic_books = ComicBook.all

    render "index.json.jbuilder"
  end

  def create
    @comic_book = ComicBook.new(
      title: params["title"],
      price: params["price"],
      author: params["author"]
      )

    if @comic_book.save
      render "show.json.jbuilder"
    else
      render json: {error: @comic_books.errors.full_message}, status: 404
    end
  end

  def show
    @comic_book = ComicBook.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @comic_book = ComicBook.find_by(id: params[:id])
    @comic_book.title = params[:title] || @comic_book.title 
    @comic_book.price = params[:price] || @comic_book.price
    @comic_book.author = params[:author] || @comic_book.author

    if @comic_book.save
      render "show.json.jbuilder"
    else
      render json: {errors: @comic_book.errors.full_message}, status: 404
    end
  end

  def destroy
    @comic_book = ComicBook.find_by(id: params[:id])
    @comic_book.destroy
    render json: {message: "This book is no longer available"}
  end

end