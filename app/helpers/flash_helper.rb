# frozen_string_literal: true

module FlashHelper
  def flash_class(type)
    return if type.blank?

    flash_message = {
      success: 'text-blue-dark bg-[#c7e9f5]',
      error: 'text-red-700 bg-red-100',
      alert: 'text-red-700 bg-red-100',
      notice: 'text-blue-dark bg-[#c7e9f5]'
    }[type.to_sym]
    "p-4 mb-4 text-sm rounded-lg #{flash_message}"
  end
end
