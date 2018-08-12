json.array! @cards do |card|
  json.name       card.user.name
  json.company    card.company.name
  json.address    card.company.address
  json.department card.department
  json.title      card.title
  json.created_at card.created_at.strftime("%Y/%m/%d %H:%M")
end
