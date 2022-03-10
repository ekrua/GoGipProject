<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출석체크미완</title>

<style>
* {
    margin: 0;
    padding: 0;
    font-family: sans-serif;
    box-sizing: border-box;
  }
    
  body {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
  }
  .calendar {
    width: 600px;
    margin: 50px;
  }
  .header {
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  
  .year-month {
    font-size: 35px;
  }
  
  .nav {
    display: flex;
    border: 1px solid #333333;
    border-radius: 5px;
  }
  
  .nav-btn {
    width: 28px;
    height: 30px;
    border: none;
    font-size: 16px;
    line-height: 34px;
    background-color: transparent;
    cursor: pointer;
  }
  
  .go-today {
    width: 75px;
    border-left: 1px solid #333333;
    border-right: 1px solid #333333;
  }
  .days {
    display: flex;
    margin: 25px 0 10px;
  }
  
  .day {
    width: calc(100% / 7);
    text-align: center;
  }
  
  .dates {
    display: flex;
    flex-flow: row wrap;
    height: 500px;
    border-top: 1px solid #333333;
    border-right: 1px solid #333333;
  }
  
  .date {
    width: calc(100% / 7);
    padding: 15px;
    text-align: right;
    border-bottom: 1px solid #333333;
    border-left: 1px solid #333333;
  }
  .day:nth-child(7n + 1),
.date:nth-child(7n + 1) {
  color: #D13E3E;
}

.day:nth-child(7n),
.date:nth-child(7n) {
  color: #396EE2;
}

.other {
    opacity: .3;
  }

  .today {
    position: relative;
    color: #FFFFFF;
  }
  
  .today::before {
    position: absolute;
    top: 50%;
    left: 50%;
    z-index: -1;
    display: block;
    width: 30px;
    height: 30px;
    background-color: #FF0000;
    border-radius: 50%;
    transform: translate(-50%, -50%);
    content: '';
  }
</style>


</head>
<body>
	<!-- 
	<header> 
	<%@include file="/WEB-INF/views/header.jsp" %>
	</header> -->

    <div class="calendar">
        <div class="header">
            <div class="year-month"></div>
            <div class="nav">
                <button class="nav-btn go-prev" onclick="prevMonth()">&lt;</button>
                <button class="nav-btn go-today" onclick="goToday()">Today</button>
                <button class="nav-btn go-next" onclick="nextMonth()">&gt;</button>
            </div>
        </div>
        <div class="main">
            <div class="days">
                <div class="day">일</div>
                <div class="day">월</div>
                <div class="day">화</div>
                <div class="day">수</div>
                <div class="day">목</div>
                <div class="day">금</div>
                <div class="day">토</div>
            </div>
            <div class="dates"></div>
        </div>
    </div>
    
   
   <script>
//Date 객체 생성
let date = new Date();

const renderCalendar = () => {
    const viewYear = date.getFullYear();
    const viewMonth = date.getMonth();
    

    // year-month 채우기
    document.querySelector('.year-month').textContent = viewYear + "년" + " "+ (viewMonth + 1) +'월';

    // 지난 달 마지막 Date, 이번 달 마지막 Date
    const prevLast = new Date(viewYear, viewMonth, 0);
    const thisLast = new Date(viewYear, viewMonth + 1, 0);

    const PLDate = prevLast.getDate();
    const PLDay = prevLast.getDay();
    
    const TLDate = thisLast.getDate();
    const TLDay = thisLast.getDay();

    // Dates 기본 배열들
    const prevDates = [];
    const thisDates = [...Array(TLDate + 1).keys()].slice(1);
    const nextDates = [];

    
    // prevDates 계산
    if (PLDay !== 6) {
        for (let i = 0; i < PLDay + 1; i++) {
            prevDates.unshift(PLDate - i);
        }
    }

    // nextDates 계산
    for (let i = 1; i < 7 - TLDay; i++) {
        nextDates.push(i);
        
    }

    // Dates 합치기
    const dates = prevDates.concat(thisDates, nextDates);


    // Dates 정리
    const firstDateIndex = dates.indexOf(1);
    const lastDateIndex = dates.lastIndexOf(TLDate);
    
   dates.forEach((date,i) => {
        const condition = i >= firstDateIndex && i < lastDateIndex + 1
            ? 'this'
            : 'other'
        dates[i] = "<div class='date'><span class='" + condition + "'>" + date +'</span></div>';
        
        console.log( dates[i] );
    });
    
   

    // Dates 그리기
    document.querySelector('.dates').innerHTML = dates.join('');

    // 오늘 날짜 그리기
    const today = new Date();
    if (viewMonth === today.getMonth() && viewYear === today.getFullYear()) {
        for (let date of document.querySelectorAll('.this')) {
            if (+date.innerText === today.getDate()) {
                date.classList.add('today');
                break;
            }
        }
    }
}

renderCalendar();

const prevMonth = () => {
    date.setDate(1);
    date.setMonth(date.getMonth() - 1);
    renderCalendar();
}

const nextMonth = () => {
    date.setDate(1);
    date.setMonth(date.getMonth() + 1);
    renderCalendar();
}

const goToday = () => {
    date = new Date();
    renderCalendar();
}
</script>
   
     <!-- 
	<footer> 
	<%@include file="/WEB-INF/views/footer.jsp" %>
	</footer> -->


</body>
</html>