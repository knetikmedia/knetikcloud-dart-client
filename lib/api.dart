library swagger.api;

import 'dart:async';
import 'dart:convert';
import 'package:http/browser_client.dart';
import 'package:http/http.dart';
import 'package:dartson/dartson.dart';
import 'package:dartson/transformers/date_time.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';

part 'api/awss3_api.dart';
part 'api/access_token_api.dart';
part 'api/activities_api.dart';
part 'api/auth_clients_api.dart';
part 'api/auth_permissions_api.dart';
part 'api/auth_roles_api.dart';
part 'api/auth_tokens_api.dart';
part 'api/bre_rule_engine_actions_api.dart';
part 'api/bre_rule_engine_categories_api.dart';
part 'api/bre_rule_engine_events_api.dart';
part 'api/bre_rule_engine_expressions_api.dart';
part 'api/bre_rule_engine_globals_api.dart';
part 'api/bre_rule_engine_rules_api.dart';
part 'api/bre_rule_engine_triggers_api.dart';
part 'api/bre_rule_engine_variables_api.dart';
part 'api/campaigns_api.dart';
part 'api/campaigns_challenges_api.dart';
part 'api/campaigns_rewards_api.dart';
part 'api/categories_api.dart';
part 'api/configs_api.dart';
part 'api/content_articles_api.dart';
part 'api/content_comments_api.dart';
part 'api/content_polls_api.dart';
part 'api/currencies_api.dart';
part 'api/devices_api.dart';
part 'api/dispositions_api.dart';
part 'api/fulfillment_api.dart';
part 'api/gamification_achievements_api.dart';
part 'api/gamification_leaderboards_api.dart';
part 'api/gamification_leveling_api.dart';
part 'api/gamification_metrics_api.dart';
part 'api/gamification_trivia_api.dart';
part 'api/invoices_api.dart';
part 'api/locations_api.dart';
part 'api/logs_api.dart';
part 'api/media_artists_api.dart';
part 'api/media_moderation_api.dart';
part 'api/media_videos_api.dart';
part 'api/messaging_api.dart';
part 'api/payments_api.dart';
part 'api/payments_apple_api.dart';
part 'api/payments_google_api.dart';
part 'api/payments_optimal_api.dart';
part 'api/payments_pay_pal_classic_api.dart';
part 'api/payments_stripe_api.dart';
part 'api/payments_transactions_api.dart';
part 'api/payments_wallets_api.dart';
part 'api/payments_xsolla_api.dart';
part 'api/reporting_challenges_api.dart';
part 'api/reporting_orders_api.dart';
part 'api/reporting_revenue_api.dart';
part 'api/reporting_subscriptions_api.dart';
part 'api/reporting_usage_api.dart';
part 'api/reporting_users_api.dart';
part 'api/search_api.dart';
part 'api/store_api.dart';
part 'api/store_bundles_api.dart';
part 'api/store_coupons_api.dart';
part 'api/store_sales_api.dart';
part 'api/store_shipping_api.dart';
part 'api/store_shopping_carts_api.dart';
part 'api/store_subscriptions_api.dart';
part 'api/store_vendors_api.dart';
part 'api/taxes_api.dart';
part 'api/users_api.dart';
part 'api/users_addresses_api.dart';
part 'api/users_friendships_api.dart';
part 'api/users_groups_api.dart';
part 'api/users_inventory_api.dart';
part 'api/users_relationships_api.dart';
part 'api/users_subscriptions_api.dart';
part 'api/util_batch_api.dart';
part 'api/util_health_api.dart';
part 'api/util_maintenance_api.dart';
part 'api/util_security_api.dart';
part 'api/util_version_api.dart';

part 'model/achievement_definition_resource.dart';
part 'model/achievement_progress_update_request.dart';
part 'model/action_resource.dart';
part 'model/action_variable_resource.dart';
part 'model/activity_entitlement_resource.dart';
part 'model/activity_occurrence_creation_failure.dart';
part 'model/activity_occurrence_join_result.dart';
part 'model/activity_occurrence_resource.dart';
part 'model/activity_occurrence_results.dart';
part 'model/activity_resource.dart';
part 'model/activity_user_resource.dart';
part 'model/address_resource.dart';
part 'model/affiliate.dart';
part 'model/aggregate_count_resource.dart';
part 'model/aggregate_invoice_report_resource.dart';
part 'model/amazon_s3_activity.dart';
part 'model/answer_resource.dart';
part 'model/apply_payment_request.dart';
part 'model/article_resource.dart';
part 'model/artist.dart';
part 'model/artist_resource.dart';
part 'model/available_setting_resource.dart';
part 'model/bare_activity_resource.dart';
part 'model/bare_challenge_activity_resource.dart';
part 'model/batch.dart';
part 'model/batch_request.dart';
part 'model/batch_return.dart';
part 'model/behavior.dart';
part 'model/billing_report.dart';
part 'model/boolean_resource.dart';
part 'model/bre_category_resource.dart';
part 'model/bre_event.dart';
part 'model/bre_event_log.dart';
part 'model/bre_global_resource.dart';
part 'model/bre_global_scope_definition.dart';
part 'model/bre_rule.dart';
part 'model/bre_rule_log.dart';
part 'model/bre_trigger_parameter_definition.dart';
part 'model/bre_trigger_resource.dart';
part 'model/bundle_item.dart';
part 'model/bundled_sku.dart';
part 'model/campaign_resource.dart';
part 'model/cart.dart';
part 'model/cart_item_request.dart';
part 'model/cart_line_item.dart';
part 'model/cart_shippable_response.dart';
part 'model/cart_shipping_address_request.dart';
part 'model/cart_shipping_option.dart';
part 'model/cart_summary.dart';
part 'model/catalog_sale.dart';
part 'model/category_resource.dart';
part 'model/challenge_activity_resource.dart';
part 'model/challenge_event_participant_resource.dart';
part 'model/challenge_event_resource.dart';
part 'model/challenge_resource.dart';
part 'model/client_resource.dart';
part 'model/collection«country».dart';
part 'model/collection«video_contribution».dart';
part 'model/collection«string».dart';
part 'model/comment_resource.dart';
part 'model/comment_search.dart';
part 'model/config.dart';
part 'model/contribution_resource.dart';
part 'model/country.dart';
part 'model/country_resource.dart';
part 'model/country_tax_resource.dart';
part 'model/coupon_definition.dart';
part 'model/coupon_item.dart';
part 'model/create_billing_agreement_request.dart';
part 'model/create_pay_pal_payment_request.dart';
part 'model/currency.dart';
part 'model/currency_resource.dart';
part 'model/delta_resource.dart';
part 'model/device_resource.dart';
part 'model/discount.dart';
part 'model/disposition_count.dart';
part 'model/disposition_resource.dart';
part 'model/entitlement_grant_request.dart';
part 'model/entitlement_item.dart';
part 'model/error_resource.dart';
part 'model/expression«object».dart';
part 'model/finalize_billing_agreement_request.dart';
part 'model/finalize_pay_pal_payment_request.dart';
part 'model/flag_report_resource.dart';
part 'model/flag_resource.dart';
part 'model/forward_log.dart';
part 'model/fulfillment_type.dart';
part 'model/google_payment_request.dart';
part 'model/grant_type_resource.dart';
part 'model/group.dart';
part 'model/group_member.dart';
part 'model/group_member_resource.dart';
part 'model/group_resource.dart';
part 'model/import_job_output_resource.dart';
part 'model/import_job_resource.dart';
part 'model/inventory_subscription_resource.dart';
part 'model/invoice_create_request.dart';
part 'model/invoice_item_resource.dart';
part 'model/invoice_log_entry.dart';
part 'model/invoice_payment_status_request.dart';
part 'model/invoice_resource.dart';
part 'model/item_behavior_definition_resource.dart';
part 'model/item_template_resource.dart';
part 'model/key_value_pair«string,string».dart';
part 'model/language.dart';
part 'model/leaderboard_entry_resource.dart';
part 'model/leaderboard_resource.dart';
part 'model/leveling_resource.dart';
part 'model/localizer.dart';
part 'model/location_log_resource.dart';
part 'model/lookup_type_resource.dart';
part 'model/maintenance.dart';
part 'model/map«string,object».dart';
part 'model/metric_resource.dart';
part 'model/model_operator.dart';
part 'model/nested_category.dart';
part 'model/new_password_request.dart';
part 'model/o_auth2_resource.dart';
part 'model/oauth_access_token_resource.dart';
part 'model/optimal_payment_request.dart';
part 'model/order.dart';
part 'model/page_resource«achievement_definition_resource».dart';
part 'model/page_resource«aggregate_count_resource».dart';
part 'model/page_resource«aggregate_invoice_report_resource».dart';
part 'model/page_resource«article_resource».dart';
part 'model/page_resource«artist_resource».dart';
part 'model/page_resource«bare_activity_resource».dart';
part 'model/page_resource«bare_challenge_activity_resource».dart';
part 'model/page_resource«billing_report».dart';
part 'model/page_resource«bre_category_resource».dart';
part 'model/page_resource«bre_event_log».dart';
part 'model/page_resource«bre_global_resource».dart';
part 'model/page_resource«bre_rule».dart';
part 'model/page_resource«bre_trigger_resource».dart';
part 'model/page_resource«campaign_resource».dart';
part 'model/page_resource«cart_summary».dart';
part 'model/page_resource«catalog_sale».dart';
part 'model/page_resource«category_resource».dart';
part 'model/page_resource«challenge_event_participant_resource».dart';
part 'model/page_resource«challenge_event_resource».dart';
part 'model/page_resource«challenge_resource».dart';
part 'model/page_resource«client_resource».dart';
part 'model/page_resource«comment_resource».dart';
part 'model/page_resource«config».dart';
part 'model/page_resource«country_tax_resource».dart';
part 'model/page_resource«currency_resource».dart';
part 'model/page_resource«device_resource».dart';
part 'model/page_resource«disposition_resource».dart';
part 'model/page_resource«entitlement_item».dart';
part 'model/page_resource«flag_report_resource».dart';
part 'model/page_resource«forward_log».dart';
part 'model/page_resource«fulfillment_type».dart';
part 'model/page_resource«group_member_resource».dart';
part 'model/page_resource«group_resource».dart';
part 'model/page_resource«import_job_resource».dart';
part 'model/page_resource«invoice_log_entry».dart';
part 'model/page_resource«invoice_resource».dart';
part 'model/page_resource«item_template_resource».dart';
part 'model/page_resource«leveling_resource».dart';
part 'model/page_resource«location_log_resource».dart';
part 'model/page_resource«map«string,object»».dart';
part 'model/page_resource«oauth_access_token_resource».dart';
part 'model/page_resource«permission_resource».dart';
part 'model/page_resource«poll_resource».dart';
part 'model/page_resource«question_resource».dart';
part 'model/page_resource«question_template_resource».dart';
part 'model/page_resource«revenue_country_report_resource».dart';
part 'model/page_resource«revenue_product_report_resource».dart';
part 'model/page_resource«reward_set_resource».dart';
part 'model/page_resource«role_resource».dart';
part 'model/page_resource«saved_address_resource».dart';
part 'model/page_resource«simple_user_resource».dart';
part 'model/page_resource«simple_wallet».dart';
part 'model/page_resource«state_tax_resource».dart';
part 'model/page_resource«store_item_template_resource».dart';
part 'model/page_resource«store_item».dart';
part 'model/page_resource«subscription_resource».dart';
part 'model/page_resource«subscription_template_resource».dart';
part 'model/page_resource«template_resource».dart';
part 'model/page_resource«transaction_resource».dart';
part 'model/page_resource«usage_info».dart';
part 'model/page_resource«user_achievement_group_resource».dart';
part 'model/page_resource«user_action_log».dart';
part 'model/page_resource«user_base_resource».dart';
part 'model/page_resource«user_inventory_resource».dart';
part 'model/page_resource«user_item_log_resource».dart';
part 'model/page_resource«user_leveling_resource».dart';
part 'model/page_resource«user_relationship_resource».dart';
part 'model/page_resource«vendor_resource».dart';
part 'model/page_resource«video_relationship_resource».dart';
part 'model/page_resource«video_resource».dart';
part 'model/page_resource«wallet_total_response».dart';
part 'model/page_resource«wallet_transaction_resource».dart';
part 'model/page_resource«string».dart';
part 'model/pay_by_saved_method_request.dart';
part 'model/payment_authorization_resource.dart';
part 'model/payment_method_resource.dart';
part 'model/payment_method_type_resource.dart';
part 'model/permission.dart';
part 'model/permission_resource.dart';
part 'model/poll_answer_resource.dart';
part 'model/poll_resource.dart';
part 'model/poll_response_resource.dart';
part 'model/predicate_operation.dart';
part 'model/property.dart';
part 'model/property_definition_resource.dart';
part 'model/question_resource.dart';
part 'model/question_template_resource.dart';
part 'model/raw_email_resource.dart';
part 'model/raw_sms_resource.dart';
part 'model/reactivate_subscription_request.dart';
part 'model/refund_request.dart';
part 'model/refund_resource.dart';
part 'model/result.dart';
part 'model/revenue_country_report_resource.dart';
part 'model/revenue_product_report_resource.dart';
part 'model/revenue_report_resource.dart';
part 'model/reward_currency_resource.dart';
part 'model/reward_item_resource.dart';
part 'model/reward_set_resource.dart';
part 'model/role.dart';
part 'model/role_resource.dart';
part 'model/sample_countries_response.dart';
part 'model/saved_address_resource.dart';
part 'model/schedule.dart';
part 'model/search_reference_mapping.dart';
part 'model/selected_setting_resource.dart';
part 'model/setting_option.dart';
part 'model/shipping_item.dart';
part 'model/simple_reference_resource«int».dart';
part 'model/simple_reference_resource«long».dart';
part 'model/simple_reference_resource«string».dart';
part 'model/simple_user_resource.dart';
part 'model/simple_wallet.dart';
part 'model/sku.dart';
part 'model/sku_request.dart';
part 'model/state_resource.dart';
part 'model/state_tax_resource.dart';
part 'model/store_item.dart';
part 'model/store_item_template_resource.dart';
part 'model/stripe_create_payment_method.dart';
part 'model/stripe_payment_request.dart';
part 'model/subscription_credit_resource.dart';
part 'model/subscription_plan_resource.dart';
part 'model/subscription_resource.dart';
part 'model/subscription_template_resource.dart';
part 'model/template_email_resource.dart';
part 'model/template_resource.dart';
part 'model/template_sms_resource.dart';
part 'model/tier_resource.dart';
part 'model/timezone.dart';
part 'model/token_details_resource.dart';
part 'model/transaction_resource.dart';
part 'model/usage_info.dart';
part 'model/user.dart';
part 'model/user_achievement_group_resource.dart';
part 'model/user_achievement_resource.dart';
part 'model/user_action_log.dart';
part 'model/user_activity_results_resource.dart';
part 'model/user_base_resource.dart';
part 'model/user_inventory_add_request.dart';
part 'model/user_inventory_resource.dart';
part 'model/user_item_log_resource.dart';
part 'model/user_leveling_resource.dart';
part 'model/user_relationship.dart';
part 'model/user_relationship_reference_resource.dart';
part 'model/user_relationship_resource.dart';
part 'model/user_resource.dart';
part 'model/user_tag.dart';
part 'model/variable_type_resource.dart';
part 'model/vendor_resource.dart';
part 'model/version.dart';
part 'model/video.dart';
part 'model/video_contribution.dart';
part 'model/video_relationship_resource.dart';
part 'model/video_resource.dart';
part 'model/video_tag.dart';
part 'model/wallet_alter_request.dart';
part 'model/wallet_total_response.dart';
part 'model/wallet_transaction_resource.dart';
part 'model/xsolla_payment_request.dart';


ApiClient defaultApiClient = new ApiClient();

