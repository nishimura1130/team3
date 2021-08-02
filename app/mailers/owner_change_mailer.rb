class OwnerChangeMailer < ApplicationMailer
  default from: 'from@example.com'

  def owner_change(team)
    @team = team
    @user=User.find(@team.owner_id)
    mail to: @user.email, subject: "#{@team.name}のリーダーになりました"
  end
end