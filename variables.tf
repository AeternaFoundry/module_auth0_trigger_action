variable "trigger_actions" {
  description = <<EOT
Map of trigger_actions, attributes below
Required:
    - action_id
    - trigger
Optional:
    - display_name
EOT

  type = map(object({
    action_id    = string
    trigger      = string
    display_name = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.trigger_actions : (
        contains(["post-login", "credentials-exchange", "pre-user-registration", "post-user-registration", "post-change-password", "send-phone-message", "password-reset-post-challenge", "custom-email-provider", "custom-phone-provider", "login-post-identifier", "signup-post-identifier", "post-credential-validation"], v.trigger)
      )
    ])
    error_message = "must be one of: \"post-login\", \"credentials-exchange\", \"pre-user-registration\", \"post-user-registration\", \"post-change-password\", \"send-phone-message\", \"password-reset-post-challenge\", \"custom-email-provider\", \"custom-phone-provider\", \"login-post-identifier\", \"signup-post-identifier\", \"post-credential-validation\""
  }
}

