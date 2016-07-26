
User.delete_all
Post.delete_all

User.create! username: "mazeem", password: "12345678"
Post.create! title: "Test post"
Post.create! title: "Teeeeeesssssst post"
