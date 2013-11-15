module PagesHelper

	def random_records(number, records)
		id_array = []
		records.each { |t| id_array << t.id }
		output = []
		id_array.sample(number).each { |id| output << records.find(id) }
		return output
	end

	def random_testimonials(number)
		random_records(number, Testimonial.all)
	end

	def get_job_sample
		job = random_records(1, Job.all).first
		[job.source, job.output] if job
	end

	def get_commercial_tiles
		[
			{
				header: 'Скорость',
				body: 'Если вы очень расчетливый бизнесмен, то у вас не бывает авралов. Вы живете по четкому плану и, скорее всего, не существуете. Обычному человеку нужно сделать все как можно быстрее. Мы умеем делать работу быстро: 300 тысяч знаков в сутки при гарантированном качестве. ',
				button: {text: 'Заказать рерайт &raquo;', color: 'primary'}
			},
			{
				header: 'Тест-драйв',
				body: 'Мы понимаем, что вы, скорее всего, видите этот сайт в первый раз и пока не верите нам. Как насчет небольшого пробника, который не будет стоить вам ни копейки? Оцените нашу скорость и качество работы бесплатно! Отправьте нам текст размером 1000 знаков, и мы сделаем его рерайт!',
				button: {text: 'Заказать тест-драйв &raquo;', color: 'primary', params: {request_type: 'testdrive'}}
			}
		]
	end

	def get_price_plans
		[
			{
				style: 'danger',
				name: 'СТАНДАРТ',
				price: 110,
				prop1: 'Высший приоритет',
				prop2: 'Обычные и профессиональные тексты',
				prop3: 'До 150 тыс. знаков в день',
				button: {
					text: 'Заказать!',
					size: 'lg btn-block',
					color:'danger',
					params: {request_type: 'pricing', plan: 'standard', color: 'danger'}
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
					:size => 'lg btn-block',
					:color => 'info',
					:params => {:request_type => 'pricing', :plan => 'economy', color: 'info'}
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
					:size => 'lg btn-block',
					:color => 'success',
					:params => {:request_type => 'pricing', :plan => 'vip', color: 'success'}
				}
			}
		]
	end

end