<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>考勤信息</title>
		<link rel="stylesheet" type="text/css" href="/static/css/index.css"/>
		<link rel="stylesheet" href="https://at.alicdn.com/t/font_234130_nem7eskcrkpdgqfr.css">  <!--阿里图标库-->
	</head>
    <link rel="icon" type="image/x-icon" href="/static/img/favicon.ico">
	<body>
		<div class="index_frame_leftTop">
			<div id='schedule-boxS'></div>
			<div class="index_liTLeft">
				<div class="index_liTline"></div>
			</div>
			<div class="index_liTRight">
				<div class="index_liTline"></div>
			</div>
		</div>
		<div class="index_frame_leftBottom">
			<div class="index_liBLeft"></div>
			<div class="index_liBRight"></div>
			<div class="index_frame_leftBottom_Top clearfix">
				<div>
					<div id="attendance1" style="width: 100%;height: 145px;"></div>
					<span>出勤情况</span>
				</div>
				<div>
					<div id="attendance2" style="width: 100%;height: 145px;"></div>
					<span>早退/迟到</span>
				</div>
				<div>
					<div id="attendance3" style="width: 100%;height: 145px;"></div>
					<span>缺勤</span>
				</div>
				<div>
					<div id="attendance4" style="width: 100%;height: 145px;"></div>
					<span>旷工</span>
				</div>
			</div>
			<div class="index_frame_leftBottom_bottom clearfix">
				<div>
					<span>1</span>
					<span>病假</span>
				</div>
				<div>
					<span>0</span>
					<span>事假</span>
				</div>
				<div>
					<span>2</span>
					<span>年假</span>
				</div>
				<div>
					<span>3</span>
					<span>调休</span>
				</div>
				<div>
					<span>0</span>
					<span>婚/丧假</span>
				</div>
				<div>
					<span>0</span>
					<span>产假/护理假</span>
				</div>
			</div>
		</div>
		
		<script src="/static/js/index.js" type="text/javascript" charset="utf-8"></script>
		<script src="/static/js/schedule.js" type="text/javascript" charset="utf-8"></script>
		<script src="/static/js/echarts.simple.min.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			var mySchedule = new Schedule({
				el: '#schedule-boxS',
				//异常考勤
				qqDate : [{time:"2019-05-09",Morning:"",Afternoon:"18:00"},{time:"2019-05-16",Morning:"08:00",Afternoon:""},{time:"2019-06-19",Morning:"08:00",Afternoon:""}],
				//正常考勤
				zcDate : [
							{time:"2019-05-01",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-05-02",Morning:"08:00",Afternoon:"16:03"},
							{time:"2019-05-03",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-05-06",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-05-07",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-05-08",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-05-09",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-05-10",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-05-13",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-05-14",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-05-15",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-05-16",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-05-17",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-05-15",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-05-20",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-05-21",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-05-22",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-05-23",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-05-24",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-05-27",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-05-28",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-05-29",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-05-30",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-05-31",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-06-03",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-06-04",Morning:"08:00",Afternoon:"16:03"},
							{time:"2019-06-05",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-06-06",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-06-07",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-06-10",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-06-11",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-06-12",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-06-13",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-06-14",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-06-17",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-06-18",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-06-19",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-06-20",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-06-21",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-06-24",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-06-25",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-06-26",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-06-27",Morning:"08:00",Afternoon:"18:00"},
							{time:"2019-06-28",Morning:"08:00",Afternoon:"18:00"},
						],
			})
		</script>
	</body>
</html>
