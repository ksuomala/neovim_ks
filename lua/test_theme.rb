def test_function(arg)
  @user = User.find_by(email: "kalle@pikasiirto.fi")
  user_name = user.name
end
