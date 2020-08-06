# Stripe Connect
实现 Stripe Connect api功能。

> [创建 connect test账号](https://stripe.com/docs/connect/enable-payment-acceptance-guide)

使用stripe Connect api的两种方式
1.[直接支付](#1.direct-charges)
2.[订阅支付](#2.subscription-charges)

> [stripe api 文档](https://stripe.com/docs/api)


### 1.direct charges
> [direct charges_文档](https://stripe.com/docs/connect/direct-charges)

#### 1-1 获取stripe_token

<a href="./token/stripe_create_token.sh">stripe_token</a>

通过银行卡信息
```shell
card_number=5555555555554444 #银行卡卡号
card_cvc=123 #银行卡cvc
card_exp_month=12 #银行卡过期月
card_exp_year=21 #银行卡过期年
```
创建一个有效的token

#### 1-2 创建/更新 Connect account 's customer

#######################

<a href="./customer/stripe_create_connect_account_customer.sh">create_account</a>

通过用户信息
```shell
email=test2@qq.com
name=test
phone=13000000000
```
创建一个有效的customer

#######################

<a href="./customer/stripe_update_connect_account_customer.sh">update_account</a>

通过用户信息
```shell
email=test2@qq.com
name=test
phone=13000000000
customer=cusxxxxxx #customer的值要在stripe_create_connect_account_customer.log文件中
```
更新一个有效的customer


#######################
#### 1-3 用户支付
<a href="./paymentIntent/paymentIntent.sh">paymentIntent</a>

通过支付信息
```shell
payment_method_types=card
amount=1000
currency=jpy
confirm=true
description="created"
```
创建一个有效的支付

#### 1-4 支付成功！！！

### 2.subscription-charges

#### 2-1 获取stripe_token

<a href="./token/stripe_create_token.sh">stripe_token</a>

通过银行卡信息
```shell
card_number=5555555555554444 #银行卡卡号
card_cvc=123 #银行卡cvc
card_exp_month=12 #银行卡过期月
card_exp_year=21 #银行卡过期年
```
创建一个有效的token

#### 2-2 创建/更新 Connect account 's customer

#######################

<a href="./customer/stripe_create_connect_account_customer.sh">create_account</a>

通过用户信息
```shell
email=test2@qq.com
name=test
phone=13000000000
```
创建一个有效的customer

#######################

<a href="./customer/stripe_update_connect_account_customer.sh">update_account</a>

通过用户信息
```shell
email=test2@qq.com
name=test
phone=13000000000
customer=cusxxxxxx #customer的值要在stripe_create_connect_account_customer.log文件中
```
更新一个有效的customer

#######################

#### 2-3 创建产品
<a href="./products/create_products.sh">products</a>

通过产品信息
```shell
ename=product
type=service
```
创建一个有效的产品

#### 2-4 创建计划
<a href="./plan/create_plan.sh">plan</a>

通过计划信息
```shell
payment_method_types=card
amount=1000
currency=jpy
confirm=true
description="created"
product= #product在create_products.log文件中
```
创建一个有效的计划
#### 2-5 创建订阅
<a href="./subscripition/create_subscription.sh">subscription</a>

通过订阅信息

```shell
plan= #plan在create_plan.log文件中
```
创建一个有效的订阅
#### 2-6 订阅成功！！！
