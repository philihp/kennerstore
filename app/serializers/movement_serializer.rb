class MovementSerializer < ActiveModel::Serializer
  attributes :id, :command, :instance

  def instance
    {
      id: object.instance.id,
      movelist: object.instance.movelist
    }
  end
end
