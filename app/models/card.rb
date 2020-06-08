# coding: utf-8
class Card < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belong_to :list

  # ==========ここから追加==========
  validates :title, length: { in: 1..255 }
  validates :memo,  length: { maximum: 1000 }
  # ==========ここまで追加==========

end
