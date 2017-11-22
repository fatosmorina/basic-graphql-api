module Types
  ProjectType = GraphQL::ObjectType.define do
    name "Project"
    description "a project"

    field :id, !types.Int
    field :title, !types.String do
      resolve ->(project, args, ctx){
        project.user.email + '-' + project.title
      }
    end
  end
end
