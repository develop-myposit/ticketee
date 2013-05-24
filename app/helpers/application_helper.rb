module ApplicationHelper
  def title(*parts)
    unless parts.empty?
    	content_for :title do
    		@title = (parts << "Ticketee").join(" - ")
        end
  	end
  end
end
