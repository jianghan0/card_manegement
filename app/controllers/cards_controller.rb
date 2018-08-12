class CardsController < ApplicationController
  def new
  end

  def create
    # 会社情報を取得（ない場合は新規作成）
    company = Company.find_or_create_by(name: params[:company_name], address: params[:company_address])

    # 新しい名刺情報を作成
    new_card = Card.new(
      user_id: current_user.id,
      company_id: company.id,
      department: params[:department],
      title: params[:title]
    )

    if new_card.save
      redirect_to root_path, notice: '新しい名刺を作成しました。'
    else
      redirect_to new_card_path, alert: '新しい名刺を作成できませんでした。'
    end
  end

  def update
  end

  def destroy
  end
end
