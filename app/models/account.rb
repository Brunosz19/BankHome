class Account < ApplicationRecord
  belong_to :provider

  validates :name, length: { maximum: 50, message: "El nombre de la cuenta no puede tener más de 50 caracteres" }

end
