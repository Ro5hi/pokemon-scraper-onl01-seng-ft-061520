class Pokemon
  
  attr_accessor :id, :name, :type, :hp, :db 
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?,?), name, type")
  end 
  
  def self.find(id_num, db)
    pokemon = db.execute("SELECT * FROM pokemon WHERE id=?, id_num").flatten 
    
end
