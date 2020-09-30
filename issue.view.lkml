view: issue_config {
  extension: required
  extends: [issue_core]


# To modify the definition of "Needs Triage" dimension, edit the sql statement below:


  # dimension: needs_triage {
  #   type: yesno
  #   description: "By default, issues with no priority will be labeled as needing triage. This defaul can by modified in the config project. "
  #   sql: CASE WHEN ${priority.name} IS NULL THEN true ELSE false END ;;
  # }


# To modify the definition of "Is Approaching SLA" dimension, edit the sql statement below:

  # dimension: is_approaching_sla {
  #   description: "Wheather the SLA is less than 30 days away."
  #   type: yesno
  #   sql: CASE WHEN (${sla.remaining_time_dim}/ (1000 * 60 * 60 * 24)) < 30 THEN true ELSE false END ;;
  # }
}
