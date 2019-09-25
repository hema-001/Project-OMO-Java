<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OMO - Online Meal Ordering</title>

<style type="text/css">
.grid-container {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr 1fr 1fr;
  grid-template-rows: 1fr 1fr 1fr 1fr 1fr 1fr;
  grid-gap: 10px;
  grid-auto-rows: 100px;
  grid-template-areas: 
  "header header header header Logo" 
  "LSide Main Main Main Rside" 
  "LSide Main Main Main Rside" 
  "LSide Main Main Main Rside" 
  "LSide Main Main Main Rside" 
  "Footer Footer Footer Footer Footer";
  background-color: blue;
  align-items: start;
  margin: auto;
width: 100%;
}

.meal-grid-container {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr;
  grid-template-rows: 1fr 1fr 1fr 1fr;
  grid-template-areas: 
  "Meal-Container-1 Meal-Container-2 Meal-Container-3 "
   "Meal-Container-4 Meal-Container-5 Meal-Container-6 "
    "Meal-Container-7 Meal-Container-8 Meal-Container-9 "
    "Meal-Container-10 Meal-Container-11 Meal-Container-12 ";
    align-content: center;
}

.meal-Meal-Container-1 { grid-area: meal-Meal-Container-1;}

.meal-Meal-Container-2 { grid-area: meal-Meal-Container-2; }

.meal-Meal-Container-3 { grid-area: meal-Meal-Container-3; }

.meal-Meal-Container-4 { grid-area: meal-Meal-Container-4; }

.meal-Meal-Container-5 { grid-area: meal-Meal-Container-5; }

.meal-Meal-Container-6 { grid-area: meal-Meal-Container-6; }

.meal-Meal-Container-7 { grid-area: meal-Meal-Container-7; }

.meal-Meal-Container-8 { grid-area: meal-Meal-Container-8; }

.meal-Meal-Container-9 { grid-area: meal-Meal-Container-9; }

.meal-Meal-Container-10 { grid-area: meal-Meal-Container-10; }

.meal-Meal-Container-11 { grid-area: meal-Meal-Container-11; }

.meal-Meal-Container-12 { grid-area: meal-Meal-Container-12; }


.header { grid-area: header;
margin: auto;
width: 80%;
 }

.Logo { grid-area: Logo;
margin: auto;
width: 80%;
 }

.Rside { grid-area: Rside;
margin: auto;
width: 80%;
 }

.LSide { grid-area: LSide;
margin: auto;
width: 80%;
 }

.Main { grid-area: Main; 
margin: auto;
width: 80%;
}

.Footer { grid-area: Footer;
margin: auto;
width: 80%;
 }
</style>
</head>
<body>

<div class="grid-container">
  <div class="header">
  <h1 align="left">OMO</h1>
  </div>
  <div class="Logo">
  <h3 align="center">Logo</h3>
  </div>
  <div class="Rside">
  <p>Categories</p><br>
  <p>C1</p><br>
  <p>C2</p><br>
  <p>C3</p><br>
  </div>
  <div class="LSide">
  <p>Ads</p><br>
  <p>AD1</p><br>
  <p>AD2</p><br>
  <p>AD3</p><br>
  </div>
  <div class="Main">
<div class="meal-grid-container">
  <div class="Meal-Container-1">M1</div>
  <div class="Meal-Container-2">M2</div>
  <div class="Meal-Container-3">M3</div>
  <div class="Meal-Container-4">M4</div>
  <div class="Meal-Container-5">M5</div>
  <div class="Meal-Container-6">M6</div>
  <div class="Meal-Container-7">M7</div>
  <div class="Meal-Container-8">M8</div>
  <div class="Meal-Container-9">M9</div>
  <div class="Meal-Container-10">M10</div>
  <div class="Meal-Container-11">M11</div>
  <div class="Meal-Container-12">M12</div>
</div>
  </div>
  <div class="Footer">
  <p>Contact us : x-xxx-xxx-xxxx</p>
  </div>
</div>

</body>
</html>