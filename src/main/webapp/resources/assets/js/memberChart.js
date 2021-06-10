function drawChart(data, chartName, dong){
	am4core.ready(function() {
		// Themes begin
		am4core.useTheme(am4themes_animated);
		// Themes end

		// Create chart instance
		var chart = am4core.create(chartName, am4charts.XYChart);
		
		let obj = data
		
		// Add data
		chart.data = obj;

		// Create axes

		var categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
		categoryAxis.dataFields.category = "month";
		categoryAxis.renderer.grid.template.location = 0;
		categoryAxis.renderer.minGridDistance = 30;

		/* categoryAxis.renderer.labels.template.adapter.add("dy", function(dy, target) {
		  return dy;
		}); */

		var valueAxis = chart.yAxes.push(new am4charts.ValueAxis());

		// Create series
		var series = chart.series.push(new am4charts.ColumnSeries());
		series.dataFields.valueY = "avgAmount";
		series.dataFields.categoryX = "month";
		series.name = "Visits";
		series.columns.template.tooltipText = "{categoryX}월: [bold]{valueY}만원[/]";
		series.columns.template.fillOpacity = .8;
		

		var columnTemplate = series.columns.template;
		columnTemplate.strokeWidth = 0;
		columnTemplate.strokeOpacity = .8;
		columnTemplate.fill = am4core.color("#ff5821")
		
		let label = chart.chartContainer.createChild(am4core.Label);
		label.text = "월별 "+dong+" 평균 실거래가";
		label.align = "center";
		
		categoryAxis.renderer.grid.template.disabled = true;
		valueAxis.renderer.grid.template.disabled = true;
	}); // end am4core.ready()
}