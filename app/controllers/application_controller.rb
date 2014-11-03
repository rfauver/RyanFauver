class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :content_preview

  def content_preview(content)
    words = content.split
    shorter_words = []
    words.each_with_index do |word, i|
      if i < 150
        shorter_words << word
      end
    end
    shorter_words.join(' ')
  end
end
