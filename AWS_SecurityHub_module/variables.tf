variable "securityhub_action_name" {
    type        = string
    description = "The name of the Security Hub action"
    default = "Send notification"
}
variable "securityhub_action_identifier" {
    type        = string
    description = "identifier of the Security Hub action"
    default = "SendToChat"
}
variable "securityhub_action_description" {
    type        = string
    description = "description of the Security Hub action"
    default = "This is custom action sends selected findings to chat"
}