# !/bin/bash
# ./create_plan.sh > create_plan.log
# 创建计划 
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
# 为 connect account的product 创建一个plan
# 返回的数据结构在create_plan.log中

curl https://api.stripe.com/v1/plans \
  -u $STRIPE_SECRET_KEY: \
  -d amount=$amount \
  -d currency=$currency \
  -d interval=month \
  -d product=$products \
  -H "Stripe-Account: $STRIPE_ACCOUNT_ID"
