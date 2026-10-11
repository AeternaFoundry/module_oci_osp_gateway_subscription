variable "osp_gateway_subscriptions" {
  description = <<EOT
Map of osp_gateway_subscriptions, attributes below
Required:
    - compartment_id
    - email
    - osp_home_region
    - subscription_id
    - subscription (block):
        - account_type (optional)
        - bill_to_cust_account_id (optional)
        - billing_address (optional, block):
            - address_key (optional)
            - city (optional)
            - company_name (optional)
            - contributor_class (optional)
            - country (optional)
            - county (optional)
            - department_name (optional)
            - email_address (optional)
            - first_name (optional)
            - internal_number (optional)
            - job_title (optional)
            - last_name (optional)
            - line1 (optional)
            - line2 (optional)
            - line3 (optional)
            - line4 (optional)
            - middle_name (optional)
            - municipal_inscription (optional)
            - phone_country_code (optional)
            - phone_number (optional)
            - postal_code (optional)
            - province (optional)
            - state (optional)
            - state_inscription (optional)
            - street_name (optional)
            - street_number (optional)
        - currency_code (optional)
        - gsi_org_code (optional)
        - id (optional)
        - is_corporate_conversion_allowed (optional)
        - is_intent_to_pay (optional)
        - language_code (optional)
        - organization_id (optional)
        - payment_gateway (optional, block):
            - merchant_defined_data (optional, block):
                - cloud_account_name (optional)
                - promo_type (optional)
        - payment_options (optional, block):
            - credit_card_type (optional)
            - email_address (optional)
            - ext_billing_agreement_id (optional)
            - first_name (optional)
            - last_digits (optional)
            - last_name (optional)
            - name_on_card (optional)
            - payment_method (required)
            - time_expiration (optional)
            - wallet_instrument_id (optional)
            - wallet_transaction_id (optional)
        - plan_type (optional)
        - ship_to_cust_acct_role_id (optional)
        - ship_to_cust_acct_site_id (optional)
        - subscription_plan_number (required)
        - tax_info (optional, block):
            - no_tax_reason_code (optional)
            - no_tax_reason_code_details (optional)
            - tax_cnpj (optional)
            - tax_payer_id (optional)
            - tax_reg_number (optional)
        - time_personal_to_corporate_conv (optional)
        - time_plan_upgrade (optional)
        - time_start (optional)
        - upgrade_state (optional)
        - upgrade_state_details (optional)
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id  = string
    email           = string
    osp_home_region = string
    subscription_id = string
    subscription = object({
      account_type            = optional(string)
      bill_to_cust_account_id = optional(string)
      billing_address = optional(list(object({
        address_key           = optional(string)
        city                  = optional(string)
        company_name          = optional(string)
        contributor_class     = optional(string)
        country               = optional(string)
        county                = optional(string)
        department_name       = optional(string)
        email_address         = optional(string)
        first_name            = optional(string)
        internal_number       = optional(string)
        job_title             = optional(string)
        last_name             = optional(string)
        line1                 = optional(string)
        line2                 = optional(string)
        line3                 = optional(string)
        line4                 = optional(string)
        middle_name           = optional(string)
        municipal_inscription = optional(string)
        phone_country_code    = optional(string)
        phone_number          = optional(string)
        postal_code           = optional(string)
        province              = optional(string)
        state                 = optional(string)
        state_inscription     = optional(string)
        street_name           = optional(string)
        street_number         = optional(string)
      })))
      currency_code                   = optional(string)
      gsi_org_code                    = optional(string)
      id                              = optional(string)
      is_corporate_conversion_allowed = optional(bool)
      is_intent_to_pay                = optional(bool)
      language_code                   = optional(string)
      organization_id                 = optional(string)
      payment_gateway = optional(object({
        merchant_defined_data = optional(object({
          cloud_account_name = optional(string)
          promo_type         = optional(string)
        }))
      }))
      payment_options = optional(list(object({
        credit_card_type         = optional(string)
        email_address            = optional(string)
        ext_billing_agreement_id = optional(string)
        first_name               = optional(string)
        last_digits              = optional(string)
        last_name                = optional(string)
        name_on_card             = optional(string)
        payment_method           = string
        time_expiration          = optional(string)
        wallet_instrument_id     = optional(string)
        wallet_transaction_id    = optional(string)
      })))
      plan_type                 = optional(string)
      ship_to_cust_acct_role_id = optional(string)
      ship_to_cust_acct_site_id = optional(string)
      subscription_plan_number  = string
      tax_info = optional(object({
        no_tax_reason_code         = optional(string)
        no_tax_reason_code_details = optional(string)
        tax_cnpj                   = optional(string)
        tax_payer_id               = optional(string)
        tax_reg_number             = optional(string)
      }))
      time_personal_to_corporate_conv = optional(string)
      time_plan_upgrade               = optional(string)
      time_start                      = optional(string)
      upgrade_state                   = optional(string)
      upgrade_state_details           = optional(string)
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.osp_gateway_subscriptions : (
        v.subscription.payment_options == null || alltrue([for item in v.subscription.payment_options : (contains([for v in ["CREDIT_CARD", "PAYPAL"] : lower(v)], lower(item.payment_method)))])
      )
    ])
    error_message = "must be one of: \"CREDIT_CARD\", \"PAYPAL\""
  }
}

