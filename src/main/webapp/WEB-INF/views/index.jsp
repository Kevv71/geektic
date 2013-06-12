<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>

	<head>
           <link rel="stylesheet" type="text/css" href="<c:url value = "/style.css" ></c:url>"/>
    </head>

	<body>
		
		<h1 align="center">
			Bienvenue sur Geektic ! Le site de rencontre exclusivement reserve au GEEK !
		</h1>
		
		<div id="menuhaut" align="center">
		<table>
		<tr>	
			<th><a href="<c:url value = "/" ></c:url>">Accueil</a></th>
			<th><a href="<c:url value = "/profil" ></c:url>">Mon Profil</a></th>
			<th><a href="">Recherche de Geek</a></th>
			<th><a href="<c:url value = "/presentation" ></c:url>">Présentation</a></th>
			<th><a href="">FAQ</a></th>
		</tr>
		</table>
		</div>
	
		<div id="corps"> 		
								
				<h3 align="center">Identifie-toi sur Geektic</h3><br>

				Saisis tes details de connexion<br><br>

				Identifiant : <input type="text" name="identifiant"> <br>
				Mot de passe : <input type="password" name="mot_de_passe"> <br>
				<input type="button" name="BtnConnexion" value="Se Connecter"><br> <br> Pas de compte ? Inscrivez-vous <a href="<c:url value = "/inscription" ></c:url>">ICI</a>
					
									
		</div>
		<div id="bas" align="center">
			<img src="images/geektic.jpg">
		</div>
	</body>

</html>