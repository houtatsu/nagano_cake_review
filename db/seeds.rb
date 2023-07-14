Admin.create!(
    email: 'test@gmail.com',
    password: '20000404',
)

Customer.create!(
    {
      first_name: "名前",
      last_name: "苗字",
      first_name_kana: "ナマエ",
      last_name_kana: "ミョウジ",
      email: "test2@gmail.com",
      postal_code: "1111111",
      address: "test1県test1市",
      telephone_number: "11111111111",
      password: "222222",
    }
    )