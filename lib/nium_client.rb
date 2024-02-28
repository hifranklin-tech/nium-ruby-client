=begin
#NIUM Platform

#NIUM Platform

The version of the OpenAPI document: 2023.12.12
Contact: experience@nium.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

# Common files
require 'nium_client/api_client'
require 'nium_client/api_error'
require 'nium_client/version'
require 'nium_client/configuration'

# Models
require 'nium_client/models/access'
require 'nium_client/models/account'
require 'nium_client/models/account_reference'
require 'nium_client/models/account_response_dto'
require 'nium_client/models/account_status_response'
require 'nium_client/models/account_validation_request_dto'
require 'nium_client/models/account_validation_response_dto'
require 'nium_client/models/activate_card_request_v2_dto'
require 'nium_client/models/activate_card_response_dto'
require 'nium_client/models/activate_card_response_v2_dto'
require 'nium_client/models/add_beneficiary_request'
require 'nium_client/models/add_beneficiary_request_dto'
require 'nium_client/models/add_card_request'
require 'nium_client/models/add_card_request_phy'
require 'nium_client/models/add_card_request_v2'
require 'nium_client/models/add_card_request_vir'
require 'nium_client/models/add_card_request_virup2_phy'
require 'nium_client/models/add_card_response_dto'
require 'nium_client/models/add_card_v2_request'
require 'nium_client/models/add_card_v2_request_select_one_of_the_following_card_type'
require 'nium_client/models/add_card_v2_response_dto'
require 'nium_client/models/add_category_response_dto'
require 'nium_client/models/add_customer_child_can_have_parent'
require 'nium_client/models/add_customer_child_has_parent'
require 'nium_client/models/add_customer_child_must_have_parent'
require 'nium_client/models/add_customer_child_must_have_parent_with_corp_billing'
require 'nium_client/models/add_customer_request_dto'
require 'nium_client/models/add_customer_response_dto'
require 'nium_client/models/additional_fees_dto'
require 'nium_client/models/address'
require 'nium_client/models/address_dto'
require 'nium_client/models/address_v2'
require 'nium_client/models/addresses'
require 'nium_client/models/amount'
require 'nium_client/models/api_error'
require 'nium_client/models/api_error2'
require 'nium_client/models/api_response2'
require 'nium_client/models/api_response_of_transaction_channels_response_dto'
require 'nium_client/models/api_response_of_wallet_refund_response_dto'
require 'nium_client/models/api_response_ofstring'
require 'nium_client/models/applicant_details'
require 'nium_client/models/applicant_details2'
require 'nium_client/models/applicant_details_v2'
require 'nium_client/models/application_common_response'
require 'nium_client/models/assign_card_dto'
require 'nium_client/models/association_details'
require 'nium_client/models/auto_sweep_bank_details'
require 'nium_client/models/balance'
require 'nium_client/models/balance_amount'
require 'nium_client/models/bank_account_details'
require 'nium_client/models/bank_routing_info'
require 'nium_client/models/bank_transfer'
require 'nium_client/models/beneficiary'
require 'nium_client/models/beneficiary_account_details_dto'
require 'nium_client/models/beneficiary_detail_request'
require 'nium_client/models/beneficiary_details_dto'
require 'nium_client/models/beneficiary_response_dto'
require 'nium_client/models/beneficiary_validation_request_dto'
require 'nium_client/models/beneficiary_validation_response_dto'
require 'nium_client/models/block_and_replace_card_request_dto'
require 'nium_client/models/block_and_replace_card_response_dto'
require 'nium_client/models/block_and_replace_status'
require 'nium_client/models/block_code_card_response_dto'
require 'nium_client/models/block_code_dto'
require 'nium_client/models/block_customer_request_dto'
require 'nium_client/models/branch_name_response_dto'
require 'nium_client/models/business_address'
require 'nium_client/models/business_details'
require 'nium_client/models/business_details2'
require 'nium_client/models/business_details_response_dto'
require 'nium_client/models/business_details_response_v2_dto'
require 'nium_client/models/business_partner'
require 'nium_client/models/business_partner2'
require 'nium_client/models/business_partner_addresses'
require 'nium_client/models/business_partner_details_response_dto'
require 'nium_client/models/business_partner_legal_details'
require 'nium_client/models/business_partner_v2'
require 'nium_client/models/button_dto'
require 'nium_client/models/css_attribute_dto'
require 'nium_client/models/cancel_conversion_error'
require 'nium_client/models/cancel_conversion_error_response'
require 'nium_client/models/cancellation_reason'
require 'nium_client/models/card_acceptor_address'
require 'nium_client/models/card_address'
require 'nium_client/models/card_assign_response_dto'
require 'nium_client/models/card_details'
require 'nium_client/models/card_info'
require 'nium_client/models/card_meta_data_response_dto'
require 'nium_client/models/card_response_dto'
require 'nium_client/models/card_tokens_dto'
require 'nium_client/models/card_widget_token_request_dto'
require 'nium_client/models/card_widget_token_response'
require 'nium_client/models/category_data'
require 'nium_client/models/channel_action_request_dto'
require 'nium_client/models/client_currency_response_dto'
require 'nium_client/models/client_custom_tag_dto'
require 'nium_client/models/client_detail_response_dto2'
require 'nium_client/models/client_fee_details_response_dto'
require 'nium_client/models/client_prefund_response_dto'
require 'nium_client/models/client_transactions_response_dto'
require 'nium_client/models/common_response'
require 'nium_client/models/compliance_document_dto'
require 'nium_client/models/compliance_document_response_dto'
require 'nium_client/models/compliance_identification_doc_dto'
require 'nium_client/models/compliance_rfi_template_metadata_response_dto'
require 'nium_client/models/confirm_funding_instrument_request_dto'
require 'nium_client/models/consent'
require 'nium_client/models/consent_details_response'
require 'nium_client/models/contact_details'
require 'nium_client/models/contact_details_response_dto'
require 'nium_client/models/container_dto'
require 'nium_client/models/conversion_cancel_request'
require 'nium_client/models/conversion_cancel_response'
require 'nium_client/models/conversion_creation_request'
require 'nium_client/models/conversion_creation_response'
require 'nium_client/models/conversion_schedule'
require 'nium_client/models/conversion_status'
require 'nium_client/models/corporate_address'
require 'nium_client/models/corporate_address_dto'
require 'nium_client/models/corporate_addresses'
require 'nium_client/models/corporate_business_details'
require 'nium_client/models/corporate_business_details_document_detail_dto'
require 'nium_client/models/corporate_business_partner'
require 'nium_client/models/corporate_business_partner_legal_details'
require 'nium_client/models/corporate_compliance_document_request_dto'
require 'nium_client/models/corporate_compliance_document_response_dto'
require 'nium_client/models/corporate_contact_details'
require 'nium_client/models/corporate_customer_requests_dto'
require 'nium_client/models/corporate_customer_response_dto'
require 'nium_client/models/corporate_detail_response_dto'
require 'nium_client/models/corporate_document_detail'
require 'nium_client/models/corporate_document_details2_dto'
require 'nium_client/models/corporate_document_details_dto'
require 'nium_client/models/corporate_document_upload_applicant_details_dto'
require 'nium_client/models/corporate_document_upload_business_details_dto'
require 'nium_client/models/corporate_document_upload_stakeholder_details_dto'
require 'nium_client/models/corporate_document_upload_stakeholders_dto'
require 'nium_client/models/corporate_enriched_detail_response_dto'
require 'nium_client/models/corporate_legal_details'
require 'nium_client/models/corporate_professional_details'
require 'nium_client/models/corporate_registered_address'
require 'nium_client/models/corporate_risk_assessment_info'
require 'nium_client/models/corporate_stakeholder_details'
require 'nium_client/models/corporate_stakeholders'
require 'nium_client/models/create_conversion_error'
require 'nium_client/models/create_conversion_error_response'
require 'nium_client/models/create_quote_error'
require 'nium_client/models/create_quote_error_response'
require 'nium_client/models/custom_fee_request_dto'
require 'nium_client/models/custom_fee_response_dto'
require 'nium_client/models/customer_account_detail'
require 'nium_client/models/customer_api_error'
require 'nium_client/models/customer_card_widget_token_request_dto'
require 'nium_client/models/customer_card_widget_token_response'
require 'nium_client/models/customer_client_tag_request_dto'
require 'nium_client/models/customer_client_tag_response_dto'
require 'nium_client/models/customer_client_tags_request_dto'
require 'nium_client/models/customer_client_tags_response_dto'
require 'nium_client/models/customer_data_external_request_dto'
require 'nium_client/models/customer_data_external_response_dto'
require 'nium_client/models/customer_data_request_dto'
require 'nium_client/models/customer_detail_response'
require 'nium_client/models/customer_detail_response_dto'
require 'nium_client/models/customer_details_response_v2_dto'
require 'nium_client/models/customer_link_account_request'
require 'nium_client/models/customer_rfi_details_response'
require 'nium_client/models/customer_tag_dto'
require 'nium_client/models/customer_tax_detail_dto'
require 'nium_client/models/cvv_response_dto'
require 'nium_client/models/demographics'
require 'nium_client/models/device_details_dto'
require 'nium_client/models/document'
require 'nium_client/models/document_detail'
require 'nium_client/models/dynamic_pay_now'
require 'nium_client/models/e_verify_customer_registration_request_dto'
require 'nium_client/models/either_source_or_destination_amount'
require 'nium_client/models/either_source_or_destination_amount_or_no_amount'
require 'nium_client/models/embossing_details'
require 'nium_client/models/error'
require 'nium_client/models/error_code_mapping'
require 'nium_client/models/error_codes400'
require 'nium_client/models/error_codes401'
require 'nium_client/models/error_codes403'
require 'nium_client/models/error_codes500'
require 'nium_client/models/error_detail400'
require 'nium_client/models/error_detail401'
require 'nium_client/models/error_detail403'
require 'nium_client/models/error_detail500'
require 'nium_client/models/error_response400'
require 'nium_client/models/error_response401'
require 'nium_client/models/error_response403'
require 'nium_client/models/error_response500'
require 'nium_client/models/exchange_rate_get_response'
require 'nium_client/models/exchange_rate_v2_response_dto'
require 'nium_client/models/exchange_rates_get_response'
require 'nium_client/models/fx_standard401_error'
require 'nium_client/models/fx_standard403_error'
require 'nium_client/models/fx_standard500_error'
require 'nium_client/models/fee_response_dto'
require 'nium_client/models/fetch_conversion_error'
require 'nium_client/models/fetch_conversion_error_response'
require 'nium_client/models/fetch_pin_response_dto'
require 'nium_client/models/fetch_pin_status_response_dto'
require 'nium_client/models/fetch_quote_error'
require 'nium_client/models/fetch_quote_error_response'
require 'nium_client/models/file'
require 'nium_client/models/fund_transfer_request_dto'
require 'nium_client/models/fund_transfer_response'
require 'nium_client/models/funding_instrument_status_update_request_dto'
require 'nium_client/models/fx_hold_lock_response_content'
require 'nium_client/models/gpi_response_dto'
require 'nium_client/models/identification_doc_dto'
require 'nium_client/models/identification_document_dto'
require 'nium_client/models/individual_customer_response_dto'
require 'nium_client/models/input_field_dto'
require 'nium_client/models/invoice_details'
require 'nium_client/models/inward_payment_manual_request_dto'
require 'nium_client/models/item_details'
require 'nium_client/models/labels'
require 'nium_client/models/legal_details'
require 'nium_client/models/legal_details_v2'
require 'nium_client/models/link_account_response'
require 'nium_client/models/local_iso_request'
require 'nium_client/models/local_iso_response'
require 'nium_client/models/lock_period'
require 'nium_client/models/lock_status_update_request_dto'
require 'nium_client/models/lock_status_update_response_dto'
require 'nium_client/models/mcc_restriction_dto'
require 'nium_client/models/merchant_category_response_dto2'
require 'nium_client/models/new_error_response'
require 'nium_client/models/oob_callback_request_dto'
require 'nium_client/models/oob_callback_response_dto'
require 'nium_client/models/onboarding_details'
require 'nium_client/models/oob_callback_request_dto'
require 'nium_client/models/open_banking_payment_response_dto'
require 'nium_client/models/p2_p_transfer_dto'
require 'nium_client/models/p2_p_transfer_response'
require 'nium_client/models/page_response_card_details'
require 'nium_client/models/paginated_customer_details_response_v2_dto'
require 'nium_client/models/paginated_response_dto_customer_details_response_v2_dto'
require 'nium_client/models/pagination'
require 'nium_client/models/partial_search_bank_name_response_dto'
require 'nium_client/models/partial_search_branch_name_response_dto'
require 'nium_client/models/partial_search_dto'
require 'nium_client/models/partnership_details'
require 'nium_client/models/passcode_request_dto'
require 'nium_client/models/passcode_response_dto'
require 'nium_client/models/passcode_status_dto'
require 'nium_client/models/payin_api_error'
require 'nium_client/models/payin_api_response2'
require 'nium_client/models/payment'
require 'nium_client/models/payment_id_cient_tags_response_dto'
require 'nium_client/models/payment_id_client_tag_response_dto'
require 'nium_client/models/payment_id_dto'
require 'nium_client/models/payment_id_request_dto2'
require 'nium_client/models/payment_id_response_dto2'
require 'nium_client/models/payment_id_tag_request_dto'
require 'nium_client/models/payment_ids_dto'
require 'nium_client/models/payout'
require 'nium_client/models/payout_customer_api_error'
require 'nium_client/models/payout_identification_document_dto'
require 'nium_client/models/payout_request'
require 'nium_client/models/pin_update_request_dto'
require 'nium_client/models/pin_update_response_dto'
require 'nium_client/models/prefund_request_dto'
require 'nium_client/models/product_address'
require 'nium_client/models/product_api_error'
require 'nium_client/models/product_association_details'
require 'nium_client/models/product_corporate_customer_response_dto'
require 'nium_client/models/product_customer_tag_dto'
require 'nium_client/models/product_document'
require 'nium_client/models/product_document_detail'
require 'nium_client/models/product_partnership_details'
require 'nium_client/models/product_professional_details'
require 'nium_client/models/product_regulatory_details'
require 'nium_client/models/product_rfi_response_request'
require 'nium_client/models/product_tax_details'
require 'nium_client/models/professional_details'
require 'nium_client/models/professional_details_response_dto'
require 'nium_client/models/public_corporate_business_details'
require 'nium_client/models/purpose_code_response_dto'
require 'nium_client/models/quote_creation_request'
require 'nium_client/models/quote_creation_response'
require 'nium_client/models/quote_type'
require 'nium_client/models/reference_rate_response_dto'
require 'nium_client/models/regenerate_kycurl400_response'
require 'nium_client/models/regenerate_url_response'
require 'nium_client/models/registered_address'
require 'nium_client/models/regulatory_details'
require 'nium_client/models/remittance_events_response_dto2'
require 'nium_client/models/remittance_response_dto'
require 'nium_client/models/remittance_transactions_request_dto'
require 'nium_client/models/remitter_account_white_list'
require 'nium_client/models/remitter_request_dto'
require 'nium_client/models/renew_card_request'
require 'nium_client/models/replace_card_request'
require 'nium_client/models/required_fields'
require 'nium_client/models/resource'
require 'nium_client/models/respond_rfi_request_dto'
require 'nium_client/models/respond_rfi_response_dto'
require 'nium_client/models/result'
require 'nium_client/models/retrieve_card_details_response_dto'
require 'nium_client/models/revenue_info'
require 'nium_client/models/rfi_attribute_response'
require 'nium_client/models/rfi_identification_doc'
require 'nium_client/models/rfi_response_info'
require 'nium_client/models/rfi_response_request'
require 'nium_client/models/rfi_template'
require 'nium_client/models/risk_assessment_info'
require 'nium_client/models/risk_assessment_info_response_dto'
require 'nium_client/models/risk_assessment_info_v2'
require 'nium_client/models/routing_info'
require 'nium_client/models/sca_status'
require 'nium_client/models/settlement_request_dto'
require 'nium_client/models/stakeholder_contact_details_response_dto'
require 'nium_client/models/stakeholder_details'
require 'nium_client/models/stakeholder_details2'
require 'nium_client/models/stakeholder_details_response_dto'
require 'nium_client/models/stakeholder_details_v2'
require 'nium_client/models/stakeholder_v2'
require 'nium_client/models/stakeholders'
require 'nium_client/models/stakeholders2'
require 'nium_client/models/standard401_error'
require 'nium_client/models/standard403_error'
require 'nium_client/models/standard404_error'
require 'nium_client/models/standard500_error'
require 'nium_client/models/static_pay_now'
require 'nium_client/models/supported_corridors_response_dto'
require 'nium_client/models/tax_details'
require 'nium_client/models/tax_details_response_dto'
require 'nium_client/models/template'
require 'nium_client/models/terms_and_conditions_accept_response_dto'
require 'nium_client/models/terms_and_conditions_request_dto'
require 'nium_client/models/terms_and_conditions_response_dto'
require 'nium_client/models/transaction'
require 'nium_client/models/transaction_amount'
require 'nium_client/models/transaction_channel_response_dto'
require 'nium_client/models/transaction_channels_response_dto'
require 'nium_client/models/transaction_client_tag_request_dto'
require 'nium_client/models/transaction_client_tag_response_dto'
require 'nium_client/models/transaction_client_tags_request_dto'
require 'nium_client/models/transaction_client_tags_response_dto'
require 'nium_client/models/transaction_limit_dto'
require 'nium_client/models/transaction_limits_dto'
require 'nium_client/models/transaction_response_dto'
require 'nium_client/models/transaction_rfi_details_response'
require 'nium_client/models/transaction_wallet_limits_dto'
require 'nium_client/models/transactions_business_dto'
require 'nium_client/models/transactions_location_dto'
require 'nium_client/models/transactions_receipt_dto'
require 'nium_client/models/typed_error_error_codes'
require 'nium_client/models/uri'
require 'nium_client/models/url'
require 'nium_client/models/unified_add_customer_request'
require 'nium_client/models/unified_add_customer_request_select_an_object_based_on_the_client_config_param_child_must_have_parent'
require 'nium_client/models/unmask_card_response_dto'
require 'nium_client/models/update_beneficiary_request_dto'
require 'nium_client/models/update_contact_info_request_dto'
require 'nium_client/models/update_corporate_kyb_response_dto'
require 'nium_client/models/update_customer_dto'
require 'nium_client/models/update_customer_response_dto'
require 'nium_client/models/upload_rfi_details_response_dto'
require 'nium_client/models/upload_rfi_details_response_dto'
require 'nium_client/models/upload_rfi_document_request_dto'
require 'nium_client/models/upload_rfi_document_request_dto'
require 'nium_client/models/virtual_account_response_dto'
require 'nium_client/models/wallet_api_error'
require 'nium_client/models/wallet_api_response2'
require 'nium_client/models/wallet_api_response_ofstring'
require 'nium_client/models/wallet_balance_response_dto'
require 'nium_client/models/wallet_fund_dto'
require 'nium_client/models/wallet_fund_response_dto'
require 'nium_client/models/wallet_fund_response_dto_payment_methods_inner'
require 'nium_client/models/wallet_funding_instruments_response_dto'
require 'nium_client/models/wallet_payment_ids_response_dto'
require 'nium_client/models/wallet_payment_ids_tag_request_dto'
require 'nium_client/models/wallet_payment_ids_tag_request_dto2'
require 'nium_client/models/wallet_refund_request_dto'
require 'nium_client/models/wallet_refund_response_dto'
require 'nium_client/models/wallet_rfi_attribute_response'
require 'nium_client/models/wallet_rfi_response_request'
require 'nium_client/models/wallet_transactions_response_dto'
require 'nium_client/models/wallet_transfer_dto'
require 'nium_client/models/wallet_transfer_response_dto'
require 'nium_client/models/window'
require 'nium_client/models/with_destination_amount'
require 'nium_client/models/with_destination_amount1'
require 'nium_client/models/with_source_amount'
require 'nium_client/models/with_source_amount1'

# APIs
require 'nium_client/api/beneficiary_api'
require 'nium_client/api/cards_reference_data_api'
require 'nium_client/api/class3_ds_api'
require 'nium_client/api/client_prefund_account_api'
require 'nium_client/api/client_settings_api'
require 'nium_client/api/client_transactions_api'
require 'nium_client/api/controls_api'
require 'nium_client/api/conversions_api'
require 'nium_client/api/conversions_previous_version_api'
require 'nium_client/api/customer_account_corporate_api'
require 'nium_client/api/customer_account_individual_api'
require 'nium_client/api/customer_fees_api'
require 'nium_client/api/customer_funding_api'
require 'nium_client/api/customer_management_api'
require 'nium_client/api/customer_terms_and_conditions_api'
require 'nium_client/api/customer_virtual_accounts_api'
require 'nium_client/api/customer_wallet_balance_api'
require 'nium_client/api/customer_wallet_transactions_api'
require 'nium_client/api/lifecycle_api'
require 'nium_client/api/open_banking_onboarding_api'
require 'nium_client/api/payin_api'
require 'nium_client/api/payout_api'
require 'nium_client/api/quotes_api'
require 'nium_client/api/quotes_previous_version_api'
require 'nium_client/api/rates_api'
require 'nium_client/api/reference_data_api'
require 'nium_client/api/security_api'
require 'nium_client/api/simulators_api'
require 'nium_client/api/wallet_to_wallet_transfers_api'

module NiumClient
  class << self
    # Customize default settings for the SDK using block.
    #   NiumClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end