BasicGraphqlApiSchema = GraphQL::Schema.define do
  mutation(Types::MutationType)
  query(Types::QueryType)

  id_from_object ->(obj,type, ctx){
    GraphQL::Schema::UniqueWithinType.encode(type.name, obj.id)
  }
end
