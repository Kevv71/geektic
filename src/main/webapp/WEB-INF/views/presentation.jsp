<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

 <html>

	<head>
	<link rel="stylesheet" type="text/css" href="style.css" />
	</head>

	<body>
		
		<h1 align="center">
				Pr�sentation [Geektic]
		</h1>
	 		
		<div id="menuhaut" align="center">
			<table>
			<tr>	
				<th><a href="<c:url value = "/" ></c:url>">Accueil</a></th>
				<th><a href="">Mon Profil</a></th>
				<th><a href="">Recherche de Geek</a></th>
				<th><a href="<c:url value = "/presentation" ></c:url>">Pr�sentation</a></th>
				<th><a href="">FAQ</a></th>
			</tr>
			</table>
		</div>
	
		<div id="corps"> 		
			
			<p><br><br>
			 Bienvenue sur Geektic.COM !<br><br>

			Votre site en ligne pour rencontrer des geeks du monde entier !<br><br>

			Nous vous proposons simplement de communiquer tr�s librement sur Internet.<br><br>

			Rejoignez d�s � pr�sent les centaines de milliers de membres geek d�j� inscrits.<br><br>
			Nous vous souhaitons d'agr�ables moments sur Geektic.COM.
  					
			</p>
			
		</div>
			<div id="bas" align="center">
			<img src="images/geektic.jpg">
		</div>
	</body>

</html>