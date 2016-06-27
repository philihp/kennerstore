class InstanceSerializer < ActiveModel::Serializer
  attributes :id,
             :state,
             :movelist,
             :boardstate
end
