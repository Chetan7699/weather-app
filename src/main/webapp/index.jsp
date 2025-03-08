<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Weather Details</title>

    <script src="js/weather.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="css/jsp-style.css">
    
</head>

<body>

     <div class="weatherContainer">
     <form action="weather" method="post" class="searchBox">
            <input type="text" placeholder="Enter City Name" id="searchInput"  name="city"/>
            <button id="searchButton"><i class="fa-solid fa-magnifying-glass"></i></button>
            
      </form>
     
      <c:if test="${not empty errorMessage}">
            <div class="error-message">${errorMessage}</div>
        </c:if>
         <c:if test="${empty errorMessage}">
        <div class="weatherDetails">
            <div class="weatherImageContainer">
                <img src="" alt="Clouds" id="weather-icon">
                <h2 class="tempDisplay">${temperature} °C</h2>
                 <input type="hidden" id="wc" value="${weatherCondition}">
            </div>
            
            <div class="locationDetails">        
                <div class="desc"><strong>${city}</strong></div>
                <div class="dateDisplay">${date}</div>
            </div>

            <div class="weatherStats">
                <div class="humidityContainer">
                    <img src="https://cdn-icons-png.flaticon.com/128/8923/8923689.png" alt="Humidity">
                    <div class="humidityValue">
                        <span>Humidity </span>
                        <h2>${humidity}% </h2>
                    </div>
                </div> 
               
                <div class="windContainer">
                    <img src="https://cdn-icons-png.flaticon.com/128/5671/5671388.png" alt="Wind Speed">
                    <div class="windValue">
                        <span>Wind Speed</span>
                        <h2> ${windSpeed} km/h</h2>
                    </div>
                </div>
            </div>
        </div>
         </c:if>
    </div>
    <script src="js/weather.js"></script>

	  
</body>

</html>
