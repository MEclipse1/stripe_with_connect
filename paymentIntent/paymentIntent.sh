# !/bin/bash
# ./paymentIntent.sh > paymentIntent.log
# 用户支付
source ../argument.sh

payment_method_types=card
amount=1000
currency=jpy
confirm=true
description="created"

# role
# 1. customer
# 2. connect account
# 3. platform

# process
# 通过 platfrom 的私钥 和 connect account 以及 customer的卡信息
# 对customer 进行 扣款
# 返回的数据结构在paymentIntent.log中
curl https://api.stripe.com/v1/payment_intents \
   -u $STRIPE_SECRET_KEY: \
   -d amount=$amount \
   -d currency=$currency \
   -d confirm=$confirm \
   -d description=$description \
   -d customer=$customer \
   -H "Stripe-Account: $STRIPE_ACCOUNT_ID"
