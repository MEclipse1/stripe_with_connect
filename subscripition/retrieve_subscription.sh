# !/bin/bash
# ./retrieve_subscription.sh > retrieve_subscription.log
# 检索用户订阅信息
source ../argument.sh

# role
# 1. customer
# 2. connect account
# 3. platform

# process
# 通过 subscriptio id 对 检索customer 的subscription信息
# 对customer 进行 扣款
# 返回的数据结构在paymentIntent.log中
curl https://api.stripe.com/v1/subscriptions/$subscription \
  -u $STRIPE_SECRET_KEY: \
  -H "Stripe-Account: $STRIPE_ACCOUNT_ID"
