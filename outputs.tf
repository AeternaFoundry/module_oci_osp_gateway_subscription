output "osp_gateway_subscriptions_id" {
  description = "Map of id values across all osp_gateway_subscriptions, keyed the same as var.osp_gateway_subscriptions except keys with no id are omitted"
  value       = { for k, v in oci_osp_gateway_subscription.osp_gateway_subscriptions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "osp_gateway_subscriptions_account_type" {
  description = "Map of account_type values across all osp_gateway_subscriptions, keyed the same as var.osp_gateway_subscriptions except keys with no account_type are omitted"
  value       = { for k, v in oci_osp_gateway_subscription.osp_gateway_subscriptions : k => v.account_type if v.account_type != null && length(v.account_type) > 0 }
}
output "osp_gateway_subscriptions_bill_to_cust_account_id" {
  description = "Map of bill_to_cust_account_id values across all osp_gateway_subscriptions, keyed the same as var.osp_gateway_subscriptions except keys with no bill_to_cust_account_id are omitted"
  value       = { for k, v in oci_osp_gateway_subscription.osp_gateway_subscriptions : k => v.bill_to_cust_account_id if v.bill_to_cust_account_id != null && length(v.bill_to_cust_account_id) > 0 }
}
output "osp_gateway_subscriptions_billing_address" {
  description = "Map of billing_address values across all osp_gateway_subscriptions, keyed the same as var.osp_gateway_subscriptions except keys with no billing_address are omitted"
  value       = { for k, v in oci_osp_gateway_subscription.osp_gateway_subscriptions : k => v.billing_address if v.billing_address != null && length(v.billing_address) > 0 }
}
output "osp_gateway_subscriptions_compartment_id" {
  description = "Map of compartment_id values across all osp_gateway_subscriptions, keyed the same as var.osp_gateway_subscriptions except keys with no compartment_id are omitted"
  value       = { for k, v in oci_osp_gateway_subscription.osp_gateway_subscriptions : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "osp_gateway_subscriptions_currency_code" {
  description = "Map of currency_code values across all osp_gateway_subscriptions, keyed the same as var.osp_gateway_subscriptions except keys with no currency_code are omitted"
  value       = { for k, v in oci_osp_gateway_subscription.osp_gateway_subscriptions : k => v.currency_code if v.currency_code != null && length(v.currency_code) > 0 }
}
output "osp_gateway_subscriptions_email" {
  description = "Map of email values across all osp_gateway_subscriptions, keyed the same as var.osp_gateway_subscriptions except keys with no email are omitted"
  value       = { for k, v in oci_osp_gateway_subscription.osp_gateway_subscriptions : k => v.email if v.email != null && length(v.email) > 0 }
}
output "osp_gateway_subscriptions_gsi_org_code" {
  description = "Map of gsi_org_code values across all osp_gateway_subscriptions, keyed the same as var.osp_gateway_subscriptions except keys with no gsi_org_code are omitted"
  value       = { for k, v in oci_osp_gateway_subscription.osp_gateway_subscriptions : k => v.gsi_org_code if v.gsi_org_code != null && length(v.gsi_org_code) > 0 }
}
output "osp_gateway_subscriptions_is_corporate_conversion_allowed" {
  description = "Map of is_corporate_conversion_allowed values across all osp_gateway_subscriptions, keyed the same as var.osp_gateway_subscriptions except keys with no is_corporate_conversion_allowed are omitted"
  value       = { for k, v in oci_osp_gateway_subscription.osp_gateway_subscriptions : k => v.is_corporate_conversion_allowed if v.is_corporate_conversion_allowed != null }
}
output "osp_gateway_subscriptions_is_intent_to_pay" {
  description = "Map of is_intent_to_pay values across all osp_gateway_subscriptions, keyed the same as var.osp_gateway_subscriptions except keys with no is_intent_to_pay are omitted"
  value       = { for k, v in oci_osp_gateway_subscription.osp_gateway_subscriptions : k => v.is_intent_to_pay if v.is_intent_to_pay != null }
}
output "osp_gateway_subscriptions_language_code" {
  description = "Map of language_code values across all osp_gateway_subscriptions, keyed the same as var.osp_gateway_subscriptions except keys with no language_code are omitted"
  value       = { for k, v in oci_osp_gateway_subscription.osp_gateway_subscriptions : k => v.language_code if v.language_code != null && length(v.language_code) > 0 }
}
output "osp_gateway_subscriptions_organization_id" {
  description = "Map of organization_id values across all osp_gateway_subscriptions, keyed the same as var.osp_gateway_subscriptions except keys with no organization_id are omitted"
  value       = { for k, v in oci_osp_gateway_subscription.osp_gateway_subscriptions : k => v.organization_id if v.organization_id != null && length(v.organization_id) > 0 }
}
output "osp_gateway_subscriptions_osp_home_region" {
  description = "Map of osp_home_region values across all osp_gateway_subscriptions, keyed the same as var.osp_gateway_subscriptions except keys with no osp_home_region are omitted"
  value       = { for k, v in oci_osp_gateway_subscription.osp_gateway_subscriptions : k => v.osp_home_region if v.osp_home_region != null && length(v.osp_home_region) > 0 }
}
output "osp_gateway_subscriptions_payment_gateway" {
  description = "Map of payment_gateway values across all osp_gateway_subscriptions, keyed the same as var.osp_gateway_subscriptions except keys with no payment_gateway are omitted"
  value       = { for k, v in oci_osp_gateway_subscription.osp_gateway_subscriptions : k => v.payment_gateway if v.payment_gateway != null && length(v.payment_gateway) > 0 }
}
output "osp_gateway_subscriptions_payment_options" {
  description = "Map of payment_options values across all osp_gateway_subscriptions, keyed the same as var.osp_gateway_subscriptions except keys with no payment_options are omitted"
  value       = { for k, v in oci_osp_gateway_subscription.osp_gateway_subscriptions : k => v.payment_options if v.payment_options != null && length(v.payment_options) > 0 }
}
output "osp_gateway_subscriptions_plan_type" {
  description = "Map of plan_type values across all osp_gateway_subscriptions, keyed the same as var.osp_gateway_subscriptions except keys with no plan_type are omitted"
  value       = { for k, v in oci_osp_gateway_subscription.osp_gateway_subscriptions : k => v.plan_type if v.plan_type != null && length(v.plan_type) > 0 }
}
output "osp_gateway_subscriptions_ship_to_cust_acct_role_id" {
  description = "Map of ship_to_cust_acct_role_id values across all osp_gateway_subscriptions, keyed the same as var.osp_gateway_subscriptions except keys with no ship_to_cust_acct_role_id are omitted"
  value       = { for k, v in oci_osp_gateway_subscription.osp_gateway_subscriptions : k => v.ship_to_cust_acct_role_id if v.ship_to_cust_acct_role_id != null && length(v.ship_to_cust_acct_role_id) > 0 }
}
output "osp_gateway_subscriptions_ship_to_cust_acct_site_id" {
  description = "Map of ship_to_cust_acct_site_id values across all osp_gateway_subscriptions, keyed the same as var.osp_gateway_subscriptions except keys with no ship_to_cust_acct_site_id are omitted"
  value       = { for k, v in oci_osp_gateway_subscription.osp_gateway_subscriptions : k => v.ship_to_cust_acct_site_id if v.ship_to_cust_acct_site_id != null && length(v.ship_to_cust_acct_site_id) > 0 }
}
output "osp_gateway_subscriptions_subscription" {
  description = "Map of subscription values across all osp_gateway_subscriptions, keyed the same as var.osp_gateway_subscriptions except keys with no subscription are omitted"
  value       = { for k, v in oci_osp_gateway_subscription.osp_gateway_subscriptions : k => one(v.subscription) if v.subscription != null && length(v.subscription) > 0 }
}
output "osp_gateway_subscriptions_subscription_id" {
  description = "Map of subscription_id values across all osp_gateway_subscriptions, keyed the same as var.osp_gateway_subscriptions except keys with no subscription_id are omitted"
  value       = { for k, v in oci_osp_gateway_subscription.osp_gateway_subscriptions : k => v.subscription_id if v.subscription_id != null && length(v.subscription_id) > 0 }
}
output "osp_gateway_subscriptions_subscription_plan_number" {
  description = "Map of subscription_plan_number values across all osp_gateway_subscriptions, keyed the same as var.osp_gateway_subscriptions except keys with no subscription_plan_number are omitted"
  value       = { for k, v in oci_osp_gateway_subscription.osp_gateway_subscriptions : k => v.subscription_plan_number if v.subscription_plan_number != null && length(v.subscription_plan_number) > 0 }
}
output "osp_gateway_subscriptions_tax_info" {
  description = "Map of tax_info values across all osp_gateway_subscriptions, keyed the same as var.osp_gateway_subscriptions except keys with no tax_info are omitted"
  value       = { for k, v in oci_osp_gateway_subscription.osp_gateway_subscriptions : k => v.tax_info if v.tax_info != null && length(v.tax_info) > 0 }
}
output "osp_gateway_subscriptions_time_personal_to_corporate_conv" {
  description = "Map of time_personal_to_corporate_conv values across all osp_gateway_subscriptions, keyed the same as var.osp_gateway_subscriptions except keys with no time_personal_to_corporate_conv are omitted"
  value       = { for k, v in oci_osp_gateway_subscription.osp_gateway_subscriptions : k => v.time_personal_to_corporate_conv if v.time_personal_to_corporate_conv != null && length(v.time_personal_to_corporate_conv) > 0 }
}
output "osp_gateway_subscriptions_time_plan_upgrade" {
  description = "Map of time_plan_upgrade values across all osp_gateway_subscriptions, keyed the same as var.osp_gateway_subscriptions except keys with no time_plan_upgrade are omitted"
  value       = { for k, v in oci_osp_gateway_subscription.osp_gateway_subscriptions : k => v.time_plan_upgrade if v.time_plan_upgrade != null && length(v.time_plan_upgrade) > 0 }
}
output "osp_gateway_subscriptions_time_start" {
  description = "Map of time_start values across all osp_gateway_subscriptions, keyed the same as var.osp_gateway_subscriptions except keys with no time_start are omitted"
  value       = { for k, v in oci_osp_gateway_subscription.osp_gateway_subscriptions : k => v.time_start if v.time_start != null && length(v.time_start) > 0 }
}
output "osp_gateway_subscriptions_upgrade_state" {
  description = "Map of upgrade_state values across all osp_gateway_subscriptions, keyed the same as var.osp_gateway_subscriptions except keys with no upgrade_state are omitted"
  value       = { for k, v in oci_osp_gateway_subscription.osp_gateway_subscriptions : k => v.upgrade_state if v.upgrade_state != null && length(v.upgrade_state) > 0 }
}
output "osp_gateway_subscriptions_upgrade_state_details" {
  description = "Map of upgrade_state_details values across all osp_gateway_subscriptions, keyed the same as var.osp_gateway_subscriptions except keys with no upgrade_state_details are omitted"
  value       = { for k, v in oci_osp_gateway_subscription.osp_gateway_subscriptions : k => v.upgrade_state_details if v.upgrade_state_details != null && length(v.upgrade_state_details) > 0 }
}

