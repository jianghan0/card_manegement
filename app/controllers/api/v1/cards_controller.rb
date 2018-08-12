class Api::V1::CardsController < ApiController
  def index
    @cards = Card.joins(:user, :company).includes(:user, :company)

    # 絞り込み
    @cards = @cards.where('users.name LIKE ?', "%#{params[:name]}%") if params[:name].present?
    @cards = @cards.where('companies.name LIKE ?', "%#{params[:company]}%") if params[:company].present?
    @cards = @cards.where('department LIKE ?', "%#{params[:department]}%") if params[:department].present?
    @cards = @cards.where('title LIKE ?', "%#{params[:title]}%") if params[:title].present?

    # ページング
    @cards = @cards.page(params[:page]).per(2)

    render :index, formats: :json, handlers: :jbuilder
  end
end
