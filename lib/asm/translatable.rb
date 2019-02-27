# frozen_string_literal: true

require "i18n"

module ASM
  # Module for translation method
  module Translatable
    def t(msgid, default, args={})
      I18n.config.enforce_available_locales = false unless I18n.config.enforce_available_locales
      I18n.t(msgid, {:default => default}.merge(args))
    end
  end
end
