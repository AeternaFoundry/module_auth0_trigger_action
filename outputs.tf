output "trigger_actions_id" {
  description = "Map of id values across all trigger_actions, keyed the same as var.trigger_actions"
  value       = { for k, v in auth0_trigger_action.trigger_actions : k => v.id }
}
output "trigger_actions_action_id" {
  description = "Map of action_id values across all trigger_actions, keyed the same as var.trigger_actions"
  value       = { for k, v in auth0_trigger_action.trigger_actions : k => v.action_id }
}
output "trigger_actions_display_name" {
  description = "Map of display_name values across all trigger_actions, keyed the same as var.trigger_actions"
  value       = { for k, v in auth0_trigger_action.trigger_actions : k => v.display_name }
}
output "trigger_actions_trigger" {
  description = "Map of trigger values across all trigger_actions, keyed the same as var.trigger_actions"
  value       = { for k, v in auth0_trigger_action.trigger_actions : k => v.trigger }
}

