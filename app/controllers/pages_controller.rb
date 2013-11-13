include PagesHelper

class PagesController < ApplicationController

	def home
		@button = {
			:action => 'open_popup_path',
			:text => 'Заказать!',
			:size => 'btn-lg',
			:color => 'success',
			:params => {}
		}
		@tiles = [
			{
				:header => 'Скорость',
				:body => 'Если вы очень расчетливый бизнесмен, то у вас не бывает авралов. Вы живете по четкому плану и, скорее всего, не существуете. Обычному человеку нужно сделать все как можно быстрее. Мы умеем делать работу быстро: 300 тысяч знаков в сутки при гарантированном качестве. '
			},
			{
				:header => 'Тест-драйв',
				:body => 'Мы понимаем, что вы, скорее всего, видите этот сайт в первый раз и пока не верите нам. Как насчет небольшого пробника, который не будет стоить вам ни копейки? Оцените нашу скорость и качество работы бесплатно! Отправьте нам текст размером 2000 знаков, и мы сделаем его рерайт!'
			}
		]
		@testimonials = random_testimonials(4)
	end

	def rewrite
		@button = {
			:action => 'open_popup_path',
			:text => 'Заказать!',
			:size => 'btn-lg',
			:color => 'success',
			:params => {}
		}
	end

	def contacts
	end

	def free
		@button = {
			:action => 'open_popup_path',
			:text => 'Попробовать!',
			:size => 'btn-lg',
			:color => 'success',
			:params => {:request_type => 'testdrive'}
		}
	end

	def prices
		@price_plans = [
			{
				:style => 'danger',
				:name => 'СТАНДАРТ',
				:price => 110,
				:prop1 => 'Высший приоритет',
				:prop2 => 'Обычные и профессиональные тексты',
				:prop3 => 'До 150 тыс. знаков в день',
				:button => {
					:text => 'Заказать!', 
					:size => 'btn-lg btn-block', 
					:color => 'danger',
					:params => {:request_type => 'pricing', :plan => 'standard'}
				}
			},
			{
				:style => 'info',
				:name => 'ЭКОНОМ',
				:price => 60,
				:prop1 => 'Вторичный приоритет',
				:prop2 => 'Тексты для обычной аудитории',
				:prop3 => 'До 100 тыс. знаков в день',
				:button => {
					:text => 'Заказать!', 
					:size => 'btn-lg btn-block', 
					:color => 'info',
					:params => {:request_type => 'pricing', :plan => 'economy'}
				}
			},
			{
				:style => 'success',
				:name => 'ПРЕМИУМ',
				:price => 290,
				:prop1 => 'Высший приоритет',
				:prop2 => 'Узкопрофильные и особо сложные тексты',
				:prop3 => 'До 150 тыс. знаков в день',
				:button => {
					:text => 'Заказать!', 
					:size => 'btn-lg btn-block', 
					:color => 'success',
					:params => {:request_type => 'pricing', :plan => 'vip'}
				}
			}
		]
	end
end