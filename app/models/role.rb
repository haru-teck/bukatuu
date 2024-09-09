class Role < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '部員' },
    { id: 3, name: '保護者' },
    { id: 4, name: '指導者' },
    { id: 5, name: '役員' }    
  ]
  
  include ActiveHash::Associations
  has_many :users

  end