class Citizen < ApplicationRecord

  def self.permitted_attributes
    [:id, :name, :document_identifier, :cns, :email, :birth_date, :photo]
  end

  has_one_attached :photo

  validates_cpf_format_of :document_identifier
  validates_email_format_of :email
end
