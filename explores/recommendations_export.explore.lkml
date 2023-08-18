include: "/views/*.view.lkml"

explore: recommendations_export {
  label: "Recommendations"
  sql_always_where:
    ${cloud_entity_type} = 'PROJECT_NUMBER'
    AND ${state} = 'ACTIVE';;

  # join: recommendations_export__target_resources {
  #   view_label: "Recommendations Export: Target Resources"
  #   sql: LEFT JOIN UNNEST(${recommendations_export.target_resources}) as recommendations_export__target_resources ;;
  #   relationship: one_to_many
  # }

  # join: recommendations_export__associated_insights {
  #   view_label: "Recommendations Export: Associated Insights"
  #   sql: LEFT JOIN UNNEST(${recommendations_export.associated_insights}) as recommendations_export__associated_insights ;;
  #   relationship: one_to_many
  # }
}
