class BookmarksController < ApplicationController
  before_action :set_bookmark, only: [:show, :edit, :update, :destroy]

  # GET /bookmarks
  # GET /bookmarks.json
  def index
    @bookmarks = Bookmark.all
  end

  # GET /bookmarks/1
  # GET /bookmarks/1.json
  def show
    # Just some idea to compare deltas between different points in time
    set_bookmark
    current_bookmarks = Bookmark.where(book_id: @bookmark.book_id)
    cur_index = current_bookmarks.index(@bookmark)
    prev_index = cur_index - 1
    prev_bookmark =  prev_index >= 0? current_bookmarks[prev_index] : @bookmark
    pages_read =  @bookmark.page - prev_bookmark.page

    @pages_read = pages_read
  end

  # GET /bookmarks/new
  def new
    puts params[:book_id]
    if params[:book_id]
      @bookmark = Bookmark.new(book_id: params[:post_id])
    else
      @bookmark = Bookmark.new
    end
  end

  # GET /bookmarks/1/edit
  def edit
  end

  # POST /bookmarks
  # POST /bookmarks.json
  def create
    @bookmark = Bookmark.new(bookmark_params)

    respond_to do |format|
      if @bookmark.save
        format.html {redirect_to @bookmark, notice: 'Bookmark was successfully created.'}
        format.json {render :show, status: :created, location: @bookmark}
      else
        format.html {render :new}
        format.json {render json: @bookmark.errors, status: :unprocessable_entity}
      end
    end
  end

  # PATCH/PUT /bookmarks/1
  # PATCH/PUT /bookmarks/1.json
  def update
    respond_to do |format|
      if @bookmark.update(bookmark_params)
        format.html {redirect_to @bookmark, notice: 'Bookmark was successfully updated.'}
        format.json {render :show, status: :ok, location: @bookmark}
      else
        format.html {render :edit}
        format.json {render json: @bookmark.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /bookmarks/1
  # DELETE /bookmarks/1.json
  def destroy
    @bookmark.destroy
    respond_to do |format|
      format.html {redirect_to bookmarks_url, notice: 'Bookmark was successfully destroyed.'}
      format.json {head :no_content}
    end
  end

  private

  def find_related_book(book_id)
    Book.find(book_id)
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def bookmark_params
    params.require(:bookmark).permit(:note, :book_id, :entry_date, :page, :progess)
  end
end
