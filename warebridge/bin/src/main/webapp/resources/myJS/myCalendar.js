var calendarEl = document.getElementById('calendar');

var calendar = new FullCalendar.Calendar(calendarEl, {
	slotMinTime: '09:00',
	slotMaxTime: '19:00',
	expandRows: true,
	height: '100%',
	
	headerToolbar: {
		left: 'listWeek,timeGridDay,timeGridWeek,dayGridMonth',
		center: 'title',
		right: 'today prev,next'
	},
	initialView: 'dayGridMonth',
	navLinks: true, // can click day/week names to navigate views
	editable: true,
	selectable: true,
	nowIndicator: true,
	dayMaxEvents: true // allow "more" link when too many events
	//,events: '/api/demo-feeds/events.json'
});
calendar.render();
