json.array! @scores do |scores|
  user = User.find(score.user_id)
  json.email user.email
  json.score user.value
  json.nickname user.nickname
  json.created_at user.created_at
end