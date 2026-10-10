output "trigger_actions_id" {
  description = "Map of id values across all trigger_actions, keyed the same as var.trigger_actions except keys with no id are omitted"
  value       = { for k, v in auth0_trigger_action.trigger_actions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "trigger_actions_action_id" {
  description = "Map of action_id values across all trigger_actions, keyed the same as var.trigger_actions except keys with no action_id are omitted"
  value       = { for k, v in auth0_trigger_action.trigger_actions : k => v.action_id if v.action_id != null && length(v.action_id) > 0 }
}
output "trigger_actions_display_name" {
  description = "Map of display_name values across all trigger_actions, keyed the same as var.trigger_actions except keys with no display_name are omitted"
  value       = { for k, v in auth0_trigger_action.trigger_actions : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "trigger_actions_trigger" {
  description = "Map of trigger values across all trigger_actions, keyed the same as var.trigger_actions except keys with no trigger are omitted"
  value       = { for k, v in auth0_trigger_action.trigger_actions : k => v.trigger if v.trigger != null && length(v.trigger) > 0 }
}

