# Users without roles
User.create(email: "no-more-roles@mail.ru", password: "12345678")
User.create(email: "i-am-lazy@gmail.com", password: "12345678")

# Users with Investor role
InvestorRole.create(user: User.create(email: "a-ma-rich@mail.ru", password: "12345678"))
InvestorRole.create(user: User.create(email: "boss@ycombinator.com", password: "12345678"))

# Users with Debtor role
DebtorRole.create(user: User.create(email: "gimme-money-plz@mail.ru", password: "12345678"))
DebtorRole.create(user: User.create(email: "gretta.thurnberg@ecoterrori.st", password: "12345678"))

# User with Investor AND Debtor role
user = User.create(email: "god@bless.me", password: "12345678")
InvestorRole.create(user: user)
DebtorRole.create(user: user)