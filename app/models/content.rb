class Content < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '自主練' },
    { id: 3, name: '練習試合' },
    { id: 4, name: '公式戦' },
    { id: 5, name: 'その他' }    
  ]
  
  include ActiveHash::Associations
  has_many :diaries

  end