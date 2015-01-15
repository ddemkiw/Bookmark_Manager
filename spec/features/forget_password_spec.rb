# feature 'user forgets password' do 

#   before (:each) do 
#     User.create(:email => 'test@test.com',
#                 :password => 'test',
#                 :password_confirmation => 'test')
#   end

#   scenario 'User requests password reset' do
#     visit 'sessions/forgot_password'
#     fill_in :email, :with => 'test@test.com'
#     click_button 'Submit'
#     expect(request_token('test@test.com').to change{User.first(:email => 'test@test.com')}
#   end 

#   scenario 'User can change password' do 
        # visit '/'
        # request_token('test@test.com')
        # visit '/sessions/change_password/#{User.first(:email => test@test.com).password'
        # save_and_open_page

        # fill_in :new_passwred, :with = '123'
        # fill_in :password_confirmation, :with '1234'
        # click_button 'Submit'
        # expect (User.first(:email => 'test@test.com').password_digest).to change

#   end 

# end 