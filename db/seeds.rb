User.create!(
  [
    {
      email: 'test@t.com',
      password: 'test123',
      id_name: '1230',
      name: '1000',
      profile: '痩せたい',
      sex: 'other',
      birth_date: '1982-11-23',
      is_deleted: 'false'
    },

    {
      email: 'test0@t.com',
      password: 'test123',
      id_name: '1231',
      name: '1001',
      profile: '温泉行きたい',
      sex: 'female',
      birth_date: '1971-05-15',
      is_deleted: 'false'
    }
    # },

    # {
    #   email: 'test1@t.com',
    #   password: 'test123',
    #   id_name: '1232',
    #   name: '1002',
    #   profile: '',
    #   sex: 'male',
    #   birth_date: '1999-01-01',
    #   is_deleted: 'false'
    # }
  ]
)

Admin.create!(
  email: 'test@t.com',
  password: 'test123'
# )

# Post.create!(
#   [
#     {
#       user_id: '1',
#       body: 'test',
#       hashbody: '#test #test1'
#     },

#     {
#       user_id: '2',
#       body: 'test2',
#       hashbody: '#test #test2'
#     },

#     {
#       user_id: '2',
#       body: 'test3',
#       hashbody: '#test #test1'
#     },

#     {
#       user_id: '1',
#       body: 'test4',
#       hashbody: '#test #test1'
#     }
#   ]
# )

# PostComment.create!(
#   [
#     {
#       user_id: '1',
#       post_id: '1',
#       comment: 'comment1'
#     },

#     {
#       user_id: '1',
#       post_id: '3',
#       comment: 'comment2'
#     },

#     {
#       user_id: '3',
#       post_id: '1',
#       comment: 'comment3'
#     },

#     {
#       user_id: '2',
#       post_id: '2',
#       comment: 'comment4'
#     },

#     {
#       user_id: '2',
#       post_id: '1',
#       comment: 'comment5'
#     }
#   ]
# )

# Favorite.create!(
#   [
#     {
#       user_id: '1',
#       post_id: '1'
#     },

#     {
#       user_id: '1',
#       post_id: '3'
#     },

#     {
#       user_id: '3',
#       post_id: '1'
#     },

#     {
#       user_id: '2',
#       post_id: '2'
#     }
#   ]
# )