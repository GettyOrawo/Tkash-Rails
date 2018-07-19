5.times do |n|
  balance = rand (3000)
  pin = [1111,2222,3333].sample
  accountnumber = 254711903303 + n
  FactoryBot.create(:account, balance:balance,
                   pin:pin,
                   accountnumber:accountnumber)
end
