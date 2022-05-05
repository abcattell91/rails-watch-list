# frozen_string_literal: true

class List < ApplicationRecord
  has_one_attached :photo
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_many :reviews, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :picture_url, presence: true, allow_blank: true
end
