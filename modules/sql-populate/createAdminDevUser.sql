INSERT INTO `emerge`.`users` (
`id` ,
`partner_id` ,
`user_name` ,
`user_pwd` ,
`user_email` ,
`user_email_2` ,
`activation_code` ,
`user_activated` ,
`unsubscribe_link` ,
`account_stylesheet` ,
`default_template` ,
`from_name` ,
`from_email` ,
`userlevel` ,
`zen_id` ,
`reseller` ,
`reseller_parent` ,
`cc_emails`
)
VALUES (
3465 , '0', 'admin-dev', MD5( 'admin-dev' ) , 'admin-dev@easyemerge.com', NULL , '', '1', '', '', '', '', '', '0', '0', '0', '0', ''
); 

INSERT INTO `users_details` (`user_id`, `first_name`, `last_name`, `company`, `company_type`, `pronoun`, `non_profit_id`, `url`, `address`, `address2`, `city`, `state`, `zip`, `country`, `timezone`, `contact_phone`, `phone2`, `price_level`, `discount_percent`, `date_activated`, `date_expiration`, `contract_length`, `data_purchased`, `sales_person`, `auto_renew`, `renew_price_level`, `renew_data_purchased`, `account_closed`, `close_date`, `users_billing_acct_id`, `sales_pc`, `sales_customer_rep`, `currency_code`, `test_account`, `billing_type`, `notify_days_before`, `company_industry`, `template_footer_id`, `status`, `lead_alert_frequency`, `always_send_receipt`) VALUES
(3465, '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '', 0, 'recurring', 30, 0, 1, 1, 'summary', 0);