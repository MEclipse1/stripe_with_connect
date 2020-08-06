# !/bin/bash
# ./create_products.sh > create_products.log
# connect account  创建产品
source ../argument.sh

name=product
type=service

# role
# 1. customer
# 2. connect account
# 3. platform

# process
# 通过 platfrom 的私钥 和 connect account 以及 customer的卡信息
# 对customer 进行 扣款
# 返回的数据结构在paymentIntent.log中

curl https://api.stripe.com/v1/products \
  -u $STRIPE_SECRET_KEY: \
  -d name="Gold Special" \
  -H "Stripe-Account: $STRIPE_ACCOUNT_ID"
