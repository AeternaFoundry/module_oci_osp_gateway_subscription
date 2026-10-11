resource "oci_osp_gateway_subscription" "osp_gateway_subscriptions" {
  for_each = var.osp_gateway_subscriptions

  compartment_id  = each.value.compartment_id
  email           = each.value.email
  osp_home_region = each.value.osp_home_region
  subscription_id = each.value.subscription_id

  subscription {
    account_type            = each.value.subscription.account_type
    bill_to_cust_account_id = each.value.subscription.bill_to_cust_account_id
    dynamic "billing_address" {
      for_each = each.value.subscription.billing_address != null ? each.value.subscription.billing_address : []
      content {
        address_key           = billing_address.value.address_key
        city                  = billing_address.value.city
        company_name          = billing_address.value.company_name
        contributor_class     = billing_address.value.contributor_class
        country               = billing_address.value.country
        county                = billing_address.value.county
        department_name       = billing_address.value.department_name
        email_address         = billing_address.value.email_address
        first_name            = billing_address.value.first_name
        internal_number       = billing_address.value.internal_number
        job_title             = billing_address.value.job_title
        last_name             = billing_address.value.last_name
        line1                 = billing_address.value.line1
        line2                 = billing_address.value.line2
        line3                 = billing_address.value.line3
        line4                 = billing_address.value.line4
        middle_name           = billing_address.value.middle_name
        municipal_inscription = billing_address.value.municipal_inscription
        phone_country_code    = billing_address.value.phone_country_code
        phone_number          = billing_address.value.phone_number
        postal_code           = billing_address.value.postal_code
        province              = billing_address.value.province
        state                 = billing_address.value.state
        state_inscription     = billing_address.value.state_inscription
        street_name           = billing_address.value.street_name
        street_number         = billing_address.value.street_number
      }
    }
    currency_code                   = each.value.subscription.currency_code
    gsi_org_code                    = each.value.subscription.gsi_org_code
    id                              = each.value.subscription.id
    is_corporate_conversion_allowed = each.value.subscription.is_corporate_conversion_allowed
    is_intent_to_pay                = each.value.subscription.is_intent_to_pay
    language_code                   = each.value.subscription.language_code
    organization_id                 = each.value.subscription.organization_id
    dynamic "payment_gateway" {
      for_each = each.value.subscription.payment_gateway != null ? [each.value.subscription.payment_gateway] : []
      content {
        dynamic "merchant_defined_data" {
          for_each = payment_gateway.value.merchant_defined_data != null ? [payment_gateway.value.merchant_defined_data] : []
          content {
            cloud_account_name = merchant_defined_data.value.cloud_account_name
            promo_type         = merchant_defined_data.value.promo_type
          }
        }
      }
    }
    dynamic "payment_options" {
      for_each = each.value.subscription.payment_options != null ? each.value.subscription.payment_options : []
      content {
        credit_card_type         = payment_options.value.credit_card_type
        email_address            = payment_options.value.email_address
        ext_billing_agreement_id = payment_options.value.ext_billing_agreement_id
        first_name               = payment_options.value.first_name
        last_digits              = payment_options.value.last_digits
        last_name                = payment_options.value.last_name
        name_on_card             = payment_options.value.name_on_card
        payment_method           = payment_options.value.payment_method
        time_expiration          = payment_options.value.time_expiration
        wallet_instrument_id     = payment_options.value.wallet_instrument_id
        wallet_transaction_id    = payment_options.value.wallet_transaction_id
      }
    }
    plan_type                 = each.value.subscription.plan_type
    ship_to_cust_acct_role_id = each.value.subscription.ship_to_cust_acct_role_id
    ship_to_cust_acct_site_id = each.value.subscription.ship_to_cust_acct_site_id
    subscription_plan_number  = each.value.subscription.subscription_plan_number
    dynamic "tax_info" {
      for_each = each.value.subscription.tax_info != null ? [each.value.subscription.tax_info] : []
      content {
        no_tax_reason_code         = tax_info.value.no_tax_reason_code
        no_tax_reason_code_details = tax_info.value.no_tax_reason_code_details
        tax_cnpj                   = tax_info.value.tax_cnpj
        tax_payer_id               = tax_info.value.tax_payer_id
        tax_reg_number             = tax_info.value.tax_reg_number
      }
    }
    time_personal_to_corporate_conv = each.value.subscription.time_personal_to_corporate_conv
    time_plan_upgrade               = each.value.subscription.time_plan_upgrade
    time_start                      = each.value.subscription.time_start
    upgrade_state                   = each.value.subscription.upgrade_state
    upgrade_state_details           = each.value.subscription.upgrade_state_details
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

