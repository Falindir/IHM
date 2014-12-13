		

		var data = [10, 20, 30, 40];
		var dataText = ["1", "2", "3", "4"];

		var colorWebSafe = [ "#009966" , "#CC3300", "#993399", "#993300", "#006633", "#0033FF", "#CC0000", "#CC0066", "#FF9900","#666666","#00CCCC", "#663333"];
		var colorWebSafe2 = [ "#66CC99" , "#FF6600", "#CC33FF", "#CC6600", "#339966", "#0066FF", "#FF0000", "#FF6699","#FFCC00","#999999", "#00FFFF", "#993333"];

		var result = [];

		for (i = 0; i < data.length; i++) { 
			

			result[i] = data[i];


		}



		var pieData = [
		{
			value: 100,
			color:colorWebSafe[6],
			highlight: colorWebSafe2[6],
			label: "Red"
		},
		{
			value: 100,
			color:colorWebSafe[7],
			highlight: colorWebSafe2[7],
			label: "Green"
		},
		{
			value: 100,
			color:colorWebSafe[8],
			highlight: colorWebSafe2[8],
			label: "Yellow"
		},
		{
			value: 100,
			color:colorWebSafe[9],
			highlight: colorWebSafe2[9],
			label: "Grey"
		},
		{
			value: 100,
			color:colorWebSafe[10],
			highlight: colorWebSafe2[10],
			label: "Dark Grey"
		},		
		{
			value: 100,
			color:colorWebSafe[11],
			highlight: colorWebSafe2[11],
			label: "Dark Grey"
		},

		{
			value: 100,
			color: colorWebSafe[0],
			highlight: colorWebSafe2[0],
			label: "TOTO"
		}
		,

		{
			value: 100,
			color: colorWebSafe[1],
			highlight: colorWebSafe2[1],
			label: "Blue"
		}
		,

		{
			value: 100,
			color: colorWebSafe[2],
			highlight: colorWebSafe2[2],
			label: "Blue"
		},

		{
			value: 100,
			color: colorWebSafe[3],
			highlight: colorWebSafe2[3],
			label: "Blue"
		},

		{
			value: 100,
			color: colorWebSafe[4],
			highlight: colorWebSafe2[4],
			label: "Blue"
		}
		,

		{
			value: 100,
			color: colorWebSafe[5],
			highlight: colorWebSafe2[5],
			label: "Blue"
		}

		];

		window.onload = function(){
			var ctx = document.getElementById("chart-area").getContext("2d");
			window.myPie = new Chart(ctx).Pie(pieData);

			var ctx2 = document.getElementById("chart-area2").getContext("2d");
			window.myPie2 = new Chart(ctx2).Pie(pieData);

		};