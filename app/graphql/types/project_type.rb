module Types
  ProjectType = GraphQL::ObjectType.define do
    name "Project"
    description "a project"

    global_id_field :id
    field :title, !types.String do
      resolve ->(project, args, ctx){
        project.user.email + '-' + project.title
      }
    end

    field :user, !UserType
  end
end
