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
				:label => 'Тариф',
				:name => :price_plan,
				:options => [
					['Стандарт: 110 рублей за тысячу знаков', 'standard'],
					['Эконом: 60 рублей за тысячу знаков', 'economy'],
					['Премиум: 290 рублей за тысячу знаков', 'vip']
				],
				:plan => params[:plan]
			}
			default_field_set << pricing_field
		else
			default_field_set
		end
	end

end
