<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 
<html>

<head>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>

<body>

	<h1 align="center">Bienvenue sur Geektic ! Le site de rencontre
		exclusivement réservé au GEEK !</h1>


	<div id="menuhaut" align="center">
		<table>
			<tr>
				<th><a href="<c:url value = "/" ></c:url>">Accueil</a></th>
				<th><a href="<c:url value = "/profil" ></c:url>">Mon Profil</a></th>
				<th><a href="<c:url value = "/recherche" ></c:url>">Recherche de Geek</a></th>
				<th><a href="<c:url value = "/presentation" ></c:url>">Présentation</a></th>
				<th><a href="">FAQ</a></th>
			</tr>
		</table>
	</div>

	<div id="corps">

		<h3 align="center">Recherche un geek sur Geektic</h3>
		<br>
		
		<form:form method="post" action="/rechercher_all_geek" commandName="geek">
									
		<br>
		<input type='submit' name='BtnRecherche' value='Rechercher'><br>
		<br>
				
</form:form>

		
      <c:forEach var="geek" items="${geeks}">
        <tr>
          <td>${geek.getNom()}</td>
           
        </tr>
        
      </c:forEach>
    
				
	</div>
	<div id="bas" align="center">
		<img src="images/geektic.jpg">
	</div>
</body>

</html>