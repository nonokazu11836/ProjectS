class PicturesController < ApplicationController
  before_action :set_picture, only: %i[ show edit update destroy ]
  ##
  before_action :authenticate_user!

  # GET /pictures or /pictures.json
  def index
    @pictures = Picture.all
  end

  # GET /pictures/1 or /pictures/1.json
  def show
  end

  # GET /pictures/new
  def new
    @picture = Picture.new

  end

  # GET /pictures/1/edit
  def edit
  end

  # POST /pictures or /pictures.json
  def create
    @picture = Picture.new(picture_params)
    student = Student.find_by(student_id: current_user.student_id).id
    @picture.student_id = student

    
    respond_to do |format|
      if @picture.save
        format.html { redirect_to @picture, notice: "Picture was successfully created." }
        format.json { render :show, status: :created, location: @picture }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pictures/1 or /pictures/1.json
  def update
    respond_to do |format|
      if @picture.update(picture_params)
        format.html { redirect_to @picture, notice: "Picture was successfully updated." }
        format.json { render :show, status: :ok, location: @picture }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pictures/1 or /pictures/1.json
  def destroy
    @user = Picture.find(params[:id])
    @picture.destroy
    # respond_to do |format|
    #   format.html { redirect_to pictures_url, notice: "Picture was successfully destroyed." }
    #   format.json { head :no_content }
    # end 
    redirect_to "/pictures/myup2"
  end

  # 検索機能
  #def search
  #  @pictures = Array.new
  #  @pictures = Picture.all
  #  if request.post?
  #    @pictures = Picture.where(:detail.student_id == params[:student_id],:picture.event_id == params[:event_id])
  #  end
  #end

  def search2 #7月6日付け加えallupに付け加えた検索機能
    detail_picture = Detail.where(student_id: params[:search])

    arr = []
    detail_picture.each do |d|
      arr << d.picture_id
    end

    @pictures = Picture.where("id IN (?)", arr )

  end

  
  #ホーム画面
  def studenthome
  end
  #医療生徒
  #def iryo
  #end

  #def myupphoto
  #  @images = Dir.glob("app/assets/images/*.jpg")
  #end
  #def destroy_myupphoto
  #  respond_to do |format|
  #    if params[:deletes].blank?
  #      format.html { redirect_to admin_articles_path }
  #      format.json { render :json, status: :unprocessable_entity } # 多分間違っている TODO
  #    end
  #    delete_list = params[:deletes].keys
  #    ActiveRecord::Base.transaction do
  #      if Article.destroy(delete_list)
  #        format.html { redirect_to admin_articles_path, notice: 'Article was successfully destroyed.' }
  #        format.json { head :no_content }
  #      end
  #    end
  #    rescue
  #  end
  #end

  def myup2 #自分の投稿した画像のページ
    student = Student.find_by(student_id: current_user.student_id)
    @pictures = Picture.where(student_id: student.id)
  end

  def allup #全ての写真のページ
    @pictures = Picture.all
  end

  def tagend  #タグ送信した後のページ 7月5日追加

    Student.all.each do |s|   
      if params["#{s.id}"] == "1"
        Detail.create(
          picture_id: params[:picture_id],
          student_id: s.id
        )
      end
    end

  end

  def showdetail
    @params = params["picture_id"]
  end
  def myupdetail
    @picture = Picture.find(params[:picture_id])
    @details = Detail.where(picture_id: params[:picture_id])

    @details.each do |d|
      d.destroy
    end

  end


  private
     #Use callbacks to share common setup or constraints between actions.
    def set_picture
     @picture = Picture.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def picture_params
      params.require(:picture).permit(:student_id, :place, :date, :event_id )
    end
    #def myupphoto
    #  
    #end
    def tomyup2
      redirect_to "pictures/myup2"
    end
  end


