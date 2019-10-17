json.user do
  json.id current_user.id
  json.debtor_id current_user.debtor_role.id
  json.message @debtor_message
end