module ApplicationHelper
	def current_cart
		Cart.find(session[:cart_id])
	end
	def hidden_div_if(condition,attributes={}, &block)
		if condition
			attributes["style"]="display:none"
		else
			content_tag("div",attributes,&block)
		end
	end
end
