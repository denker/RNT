include StaticPagesHelper

class StaticPagesController < ApplicationController

	def home
	end

	def rewrite
	end

	def contacts
	end

	def free
	end

	def prices
		@price_plans = [
			{
				:style => 'danger',
				:name => 'СТАНДАРТ',
				:price => 110,
				:prop1 => 'Высший приоритет',
				:prop2 => 'Обычные и профессиональные тексты',
				:prop3 => 'До 150 тыс. знаков в день'},

			{
				:style => 'info',
				:name => 'ЭКОНОМ',
				:price => 60,
				:prop1 => 'Вторичный приоритет',
				:prop2 => 'Тексты для обычной аудитории',
				:prop3 => 'До 100 тыс. знаков в день'
			},
			{
				:style => 'success',
				:name => 'ПРЕМИУМ',
				:price => 290,
				:prop1 => 'Высший приоритет',
				:prop2 => 'Узкопрофильные и особо сложные тексты',
				:prop3 => 'До 150 тыс. знаков в день'
			}
					]
	end
end