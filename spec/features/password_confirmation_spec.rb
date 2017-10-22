feature 'Password confirmation' do
  scenario 'I want an account not to be created if the passwords don\'t match' do
    expect { sign_up(password_confirmation: 'hello321') }.not_to change(User, :count)
  end
end
