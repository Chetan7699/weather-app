var weatherIcon = document.getElementById("weather-icon");
       var val = document.getElementById("wc").value;

       switch (val) {
           case 'Clouds':
               weatherIcon.src = "https://cdn-icons-png.flaticon.com/512/1163/1163624.png";
               break;
           case 'Clear':
               weatherIcon.src = "https://cdn-icons-png.flaticon.com/512/3222/3222800.png";
               break;
           case 'Rain':
               weatherIcon.src = "https://cdn-icons-png.flaticon.com/512/1146/1146860.png";
               break;
           case 'Mist':
               weatherIcon.src = "https://cdn-icons-png.flaticon.com/512/1779/1779800.png";
               break;
           case 'Snow':
               weatherIcon.src = "https://cdn-icons-png.flaticon.com/512/644/644128.png";
               break;
           case 'Haze':
               weatherIcon.src = "https://cdn-icons-png.flaticon.com/512/1779/1779861.png";
               break;
           default:
               weatherIcon.src = "https://cdn-icons-png.flaticon.com/512/1163/1163624.png";
       }