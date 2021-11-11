class Count < ActiveHash::Base
  self.data = [
    
    { id: 1, name: '0打（ハーフの場合)', count: 0 },
    { id: 2, name: '1打', count: 1 },
    { id: 3, name: '2打', count: 2 },
    { id: 4, name: '3打', count: 3 },
    { id: 5, name: '4打', count: 4 },
    { id: 6, name: '5打', count: 5 },
    { id: 7, name: '6打', count: 6 },
    { id: 8, name: '7打', count: 7 },
    { id: 9, name: '8打', count: 8 },
    { id: 10, name: '9打', count: 9 },
    { id: 11, name: '10打', count: 10 },
    { id: 12, name: '11打', count: 11 },
    { id: 13, name: '12打', count: 12 },
    { id: 14, name: '13打', count: 13 },
    { id: 15, name: '14打', count: 14 },
    { id: 16, name: '15打', count: 15 }
  ]
  include ActiveHash::Associations
  has_many :scores
end
