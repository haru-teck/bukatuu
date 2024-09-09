class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

 # 名前は漢字、ひらがな、カタカナのみ使用可能
validates :name, presence: true,
format: { with: /\A[ぁ-んァ-ン一-龥]+\z/,
          message: "は漢字、ひらがな、カタカナのみ使用できます" }

# パスワードは半角英数字をそれぞれ1文字以上含む
validates :password, format: { with: /\A(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]+\z/,
              message: 'は英字と数字を含める必要があります' }

# role_idは必須
validates :role_id, presence: true

# 電話番号は半角数字のみ使用可能
validates :telephone, presence: true,
     format: { with: /\A[0-9]+\z/,
               message: "は半角数字のみ使用できます" }
validates :birthday, presence: true
    
end
