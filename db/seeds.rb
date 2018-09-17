user1 = User.create(user: 'Teahead')
user2 = User.create(user: 'Tea King')
Game.create(
  {user_id: user1.id, score: 1259},
  {user_id: user2.id, score: 1386},
  {user_id: user1.id, score: 1423},
  {user_id: user2.id, score: 1149})
