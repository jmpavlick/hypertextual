class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def titleify(basename)
    basename.split("_")[1].split(/(?=[A-Z])/).join(" ") + " [" + postdate(basename) + "]"
  end

  def postdate(basename)
    datebase = basename.split("_")[0]
    datebase[0..3] + "-" + datebase[4..5] + "-" + datebase[6..7]
  end
end
