# !/bin/bash
# ./stripe_create_token.sh > stripe_create_token.log
# 生成connect account 账户中的  cusotmer 相关的stripe_token
source ../argument.sh

card_number=5555555555554444
card_cvc=123
card_exp_month=12
card_exp_year=21

# role
# 1. customer
# 2. connect account
# 3. platform

# process 
# customer 通过 
# platfrom的共钥 和 connect account id
# 生成一个stripe_token 
# 返回的数据结构在stripe_creage_token.log
curl https://api.stripe.com/v1/tokens \
  -u $STRIPE_PUBLISHABLE_KEY: \
  -d "card[number]"=$card_number \
  -d "card[exp_month]"=$card_exp_month \
  -d "card[exp_year]"=$card_exp_year \
  -d "card[cvc]"=$card_cvc \
  -H "Stripe-Account: $STRIPE_ACCOUNT_ID"

