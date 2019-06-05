 $(function() {
 	"use strict";
	
 	/*----AreaChart 对应普通人比较图----*/
 	var area = new Morris.Area({
 		element: 'revenue-chart',
 		resize: true,
 		data: [{
 			y: '2017 Q1',
 			item1: 20,
 			item2: 25
 		}, {
 			y: '2017 Q2',
 			item1: 25,
 			item2: 30
 		}, {
 			y: '2017 Q3',
 			item1: 40,
 			item2: 35
 		}, {
 			y: '2017 Q4',
 			item1: 100,
 			item2: 80
 		}, {
 			y: '2018 Q1',
 			item1: 102,
 			item2: 100
 		}, {
 			y: '2018 Q2',
 			item1: 50,
 			item2: 105
 		}, {
 			y: '2018 Q3',
 			item1: 50,
 			item2: 95
 		}, {
 			y: '2018 Q4',
 			item1: 87,
 			item2: 110
 		}, {
 			y: '2019 Q1',
 			item1: 105,
 			item2: 120
 		}, {
 			y: '2019 Q2',
 			item1: 90,
 			item2: 110
 		}],
 		xkey: 'y',
 		ykeys: ['item1', 'item2'],
 		labels: ['您的季度平均打字速度', '普通人群打字速度'],
 		lineColors: ['#f47b25', '#5d61bf'],
 		hideHover: 'auto'
 	});
	
 	/*----LineChart  对应季度分析表----*/
 	var line = new Morris.Line({
 		element: 'line-chart',
 		resize: true,
 		data: [{
 			y: '2017 Q1',
 			item1: 20
 		}, {
 			y: '2017 Q2',
 			item1: 25
 		}, {
 			y: '2017 Q3',
 			item1: 40
 		}, {
 			y: '2017 Q4',
 			item1: 100
 		}, {
 			y: '2018 Q1',
 			item1: 102
 		}, {
 			y: '2018 Q2',
 			item1: 50
 		}, {
 			y: '2018 Q3',
 			item1: 50
 		}, {
 			y: '2018 Q4',
 			item1: 87
 		}, {
 			y: '2019 Q1',
 			item1: 90
 		}, {
 			y: '2019 Q2',
 			item1: 105
 		}, {
 			y: '2019 Q3',
 			item1: 90
 		},{
			y: '2019 Q4',
			item1: 76
		}],
 		xkey: 'y',
 		ykeys: ['item1'],
 		labels: ['打字速度'],
 		lineColors: ['#5d61bf'],
 		hideHover: 'auto'
 	});
	
 /*----DonutChart----*/
 	var donut = new Morris.Donut({
 		element: 'sales-chart',
 		resize: true,
 		colors: ['#f47b25', '#5d61bf', '#3ebaef'],
 		data: [{
 			label: "正确的字数占比",
 			value: 72
 		}, {
 			label: "错误的字数占比",
 			value: 20
 		}, {
 			label: "退格的字数占比",
 			value: 8
 		}],
 		hideHover: 'auto'
 	});
	
 	/*----BarChart----*/
 	var bar = new Morris.Bar({
 		element: 'bar-chart',
 		resize: true,
 		data: [{
 			y: '2006',
 			a: 500,
 			b: 904
 		}, {
 			y: '2007',
 			a: 955,
 			b: 605
 		}, {
 			y: '2008',
 			a: 5045,
 			b: 4045
 		}, {
 			y: '2009',
 			a: 7545,
 			b: 6455
 		}, {
 			y: '2010',
 			a: 5020,
 			b: 4020
 		}, {
 			y: '2011',
 			a: 7520,
 			b: 6502
 		}, {
 			y: '2012',
 			a: 100,
 			b: 90
 		}],
 		barColors: ['#f47b25', '#5d61bf'],
 		xkey: 'y',
 		ykeys: ['a', 'b'],
 		labels: ['字数', '公益量'],
 		hideHover: 'auto'
 	});
 });