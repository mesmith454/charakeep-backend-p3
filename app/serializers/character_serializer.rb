class CharacterSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image, :history, :level, :user_id, :achievement_id, :stat_id, race_id, dndclass_id
end
