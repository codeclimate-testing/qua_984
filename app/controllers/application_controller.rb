class ApplicationController < ActionController::Base
  def permitted_params
    @permitted_params ||= params.
      permit(
        :constant_name,
        :ticket_system,
        :issue,
      ).
      tap do |parameters|
        parameters[:issue] = params[:issue].permit!
      end
  end

  def method_with_to_many_args(a, b, c, d, e, f, g)
    if a
      if b
        if c
          if d
            return e
          end
        end
      end
    end
  end
end
