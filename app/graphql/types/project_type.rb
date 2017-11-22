module Types
  ProjectType = GraphQL::ObjectType.define do
    name "Project"
    description "a project"

    field :id, !types.Int
    field :title, !types.String do
      resolve ->(obj, args, ctx){
        obj.user.email + '-' + obj.title
      }
    end
  end
end
