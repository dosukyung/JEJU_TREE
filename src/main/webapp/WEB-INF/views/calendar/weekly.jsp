<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>Document</title>
  <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
 <script src="https://uicdn.toast.com/tui.code-snippet/latest/tui-code-snippet.js"></script>
<script src="https://uicdn.toast.com/tui-calendar/latest/tui-calendar.js"></script>
<link rel="stylesheet" href="https://uicdn.toast.com/calendar/latest/toastui-calendar.min.css" />

<link rel="stylesheet" type="text/css" href="https://uicdn.toast.com/tui-calendar/latest/tui-calendar.css" />
 </head>
 <body>
<div id="calendar" style="height: 800px;"></div>

<script type="text/javascript">
$(document).ready(function(){

 var calendar = new tui.Calendar(document.getElementById('calendar'), {
  defaultView: 'week',
  taskView: true,    // can be also ['milestone', 'task']
  scheduleView: true,  // can be also ['allday', 'time']
  template: {
   milestone: function(schedule) {
    return '<span style="color:red;"><i class="fa fa-flag"></i> ' + schedule.title + '</span>';
   },
   milestoneTitle: function() {
    return 'Milestone';
   },
   task: function(schedule) {
    return '&nbsp;&nbsp;#' + schedule.title;
   },
   taskTitle: function() {
    return '<label><input type="checkbox" />Task</label>';
   },
   allday: function(schedule) {
    return schedule.title + ' <i class="fa fa-refresh"></i>';
   },
   alldayTitle: function() {
    return 'All Day';
   },
   time: function(schedule) {
    return schedule.title + ' <i class="fa fa-refresh"></i>' + schedule.start;
   }
  },
  month: {
   daynames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
   startDayOfWeek: 0,
   narrowWeekend: true
  },
  week: {
   daynames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
   startDayOfWeek: 0,
   narrowWeekend: true
  }
 });

 calendar.createSchedules([
    {
        id: '1',
        calendarId: '1',
        title: 'Bank IT Center',
        category: 'time',
        dueDateClass: '',
        start: '2018-09-11T09:00:00+09:00',
        end: '2018-09-11T18:00:00+09:00',
        isReadOnly: true    // schedule is read-only
    },
 {
        id: '2',
        calendarId: '2',
        title: 'AirShow Seoul 2018',
        category: 'time',
        dueDateClass: '',
        start: '2018-09-14T09:30:00+09:00',
        end: '2018-09-14T12:30:00+09:00'
    },
 {
        id: '3',
        calendarId: '3',
        title: 'Block Chain Seoul 2018',
        category: 'time',
        dueDateClass: '',
        start: '2018-09-14T13:30:00+09:00',
        end: '2018-09-14T18:30:00+09:00'
    }

]);
 });


 </script>

 </body>
</html>

