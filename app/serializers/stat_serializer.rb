class StatSerializer
  include FastJsonapi::ObjectSerializer
  attributes :agility, :charisma, :dexterity, :intelligence, :strength, :wisdom
end
