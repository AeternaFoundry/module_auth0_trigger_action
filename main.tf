resource "auth0_trigger_action" "trigger_actions" {
  for_each = var.trigger_actions

  action_id    = each.value.action_id
  trigger      = each.value.trigger
  display_name = each.value.display_name
}

