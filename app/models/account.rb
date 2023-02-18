class Account < ApplicationRecord
  # belongs_to :provider

  validates :name, length: { maximum: 50, message: I18n.t('errors.messages.account.name.too_long', count: 50) }
end
