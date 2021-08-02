class AgendaDestroy < ApplicationMailer
  default from: 'from@example.com'

  def agenda_destroy(agenda)
    @agenda = agenda
    @assign = Assign.where(team_id: @agenda.team_id)
    @assign.each do |assign|
    @user = User.find(assign.user_id)
    mail to: @user.email, subject: "#{@agenda.title}を削除しました"
    end

  end
end