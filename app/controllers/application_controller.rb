require 'http_accept_language'

class ApplicationController < ActionController::Base
  protect_from_forgery

  before_action :set_locale, :set_referer, except: :healthcheck

  def healthcheck
    if ActiveRecord::SchemaMigration.first.present?
      head :ok
    else
      head :internal_server_error
    end
  end

  private
  def set_locale
    I18n.locale = extract_locale_from_accept_language_header || I18n.default_locale
  end

  def extract_locale_from_accept_language_header
    if request.env['HTTP_ACCEPT_LANGUAGE']
      http_accept_language.compatible_language_from(I18n.available_locales)
    end
  end

  def http_accept_language
    HttpAcceptLanguage::Parser.new request.env['HTTP_ACCEPT_LANGUAGE']
  end

  def set_referer
    service = request.referer || params[:service]
    if service.present?
      uri = URI(service)
      @referer = uri.host.split('.').first
    end
  end

end
