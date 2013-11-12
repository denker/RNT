module RequestsHelper

	def default_field_set
		[
			{:method => :text_field, :label => 'Имя', :name => :name, :placeholder => 'Константин Симонов'},
			{:method => :phone_field, :label => 'Телефон', :name => :phone, :placeholder => '+7 987 765 4321'},
			{:method => :email_field, :label => 'E-mail', :name => :email, :placeholder => 'k.simonov@example.com'},
			{:method => :text_field, :label => 'Комментарий', :name => :comment, :placeholder => 'Я хотел бы заказать...'}
		]
	end

	def make_field_set(params)
		return default_field_set unless params
		case params[:request_type]
		when 'testdrive'
			default_field_set << {
				:method => :text_area,
				:label => 'Ваш текст',
				:name => :test_text,
				:placeholder => 'Однажды в студеную зимнюю пору...'
			}
		when 'pricing'
			pricing_field = {
				:method => :select,
				:label => 'Тарифный план',
				:name => :price_plan,
				:options => [
					['price1', '1'],
					['price2', '2']
				]
			}
			default_field_set << pricing_field
			# case params[:plan]
			# when 'standard'

			# when 'vip'
			# else
			# end
		else
			default_field_set
		end
	end

end
