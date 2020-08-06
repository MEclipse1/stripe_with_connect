# !/bin/bash
# ./create_subscription.sh > create_subscription.log
# 用户订阅
source ../argument.sh

# role
# 1. customer
# 2. connect account
# 3. platform

# process
# customer 对connect account 的 produc 按照 plan 进行 subscription
# 对customer 进行 扣款
# 返回的数据结构在paymentIntent.log中
curl https://api.stripe.com/v1/subscriptions \
  -u $STRIPE_SECRET_KEY: \
  -d customer=$customer\
  -d "items[0][plan]"=$plan \
  -H "Stripe-Account: $STRIPE_ACCOUNT_ID"
