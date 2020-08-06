# !/bin/bash
# ./stripe_update_connect_account_customer.sh > stripe_update_connect_account_customer.log
source ../argument.sh

# role
# 1. platform
# 2. connect account
# 3. customer

# porcess
# 通过 platform的私钥 和 stripe_token 在 connect account上注册/或升级用户

# step 1 在connect account 上注册用户 
email=test2@qq.com
name=test
phone=13000000000
curl https://api.stripe.com/v1/customers/$customer \
  -u $STRIPE_SECRET_KEY: \
  -d source=$stripeToken \
  -d email=$email \
  -d name=$name \
  -d phone=$phone\
  -H "Stripe-Account: $STRIPE_ACCOUNT_ID"
