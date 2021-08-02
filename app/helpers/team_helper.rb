module TeamHelper
  def default_img(image)
    image.presence || 'default.jpg'
  end

  def team_owner?
    @working_team.owner_id == current_user.id
  end
end