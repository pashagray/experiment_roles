json.user do
  json.id current_user.id
  json.investor_id current_user.investor_role.id
  json.message @investor_message
end