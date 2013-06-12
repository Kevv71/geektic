<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>

<head>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>

<body>

	<h1 align="center">Bienvenue sur Geektic ! Le site de rencontre
		exclusivement r�serv� au GEEK !</h1>


	<div id="menuhaut" align="center">
		<table>
			<tr>
				<th><a href="<c:url value = "/" ></c:url>">Accueil</a></th>
				<th><a href="<c:url value = "/profil" ></c:url>">Mon Profil</a></th>
				<th><a href="<c:url value = "/recherche" ></c:url>">Recherche de Geek</a></th>
				<th><a href="<c:url value = "/presentation" ></c:url>">Pr�sentation</a></th>
				<th><a href="">FAQ</a></th>
			</tr>
		</table>
	</div>

	<div id="corps">

		<h3 align="center">Inscription Geektic</h3>
		<br>

		<form:form method="post" action="/inscription_geek" commandName="geek">
			
				Nom : <form:input path="nom" />
			<br>
				Pr�nom :  <form:input path="prenom" />
			<br>
				Date de naissance :  <form:input path="date_naissance" />
			<br>
				Adresse :  <form:input path="adresse" />
			<br>
				Ville :  <form:input path="ville" />
			<br>
				Code Postal : <form:input path="cp" />
			<br>
				Email :  <form:input path="email" />
			<br>
				Login :  <form:input path="login" />
			<br>
				Mot de passe :  <form:input path="password" />
			<br>
			<br>
				
			<br>
		
		<div id="regles">
			<p>Avant de proc�der � votre inscription d�finitive, vous devez
				manifester votre accord avec les r�gles suivantes :</p>

			<p>
				<strong>R�gles du site</strong>
			</p>

			<p>L'inscription � ce site est gratuite ! Nous insistons sur le
				fait que vous devez respecter les r�gles d�taill�es ci-dessous. Si
				vous �tes d'accord avec les r�gles, veuillez cocher la case � J'ai
				lu les r�gles du site Geektic et j'accepte de les respecter. � et
				cliquer sur le bouton � S'inscrire �.</p>

			<p>En acceptant ces r�gles, vous vous engagez � n'�crire aucun
				message � caract�re obsc�ne, vulgaire, discriminatoire, mena�ant,
				diffamatoire, injurieux ou contraire aux lois et r�glements en
				vigueur.</p>

			<p>Vous autorisez les propri�taires du site Geektic � supprimer,
				modifier, d�placer ou fermer n'importe quel message pour n'importe
				quelle raison et sans autorisation pr�alable de votre part.</p>
			<br> <form:checkbox path="reglement" />Accepeter les
			r�gles
		</div>


		<br>
		<input type='submit' name='BtnNouveauGeek' value='S inscrire'><br>
		<br>
</form:form>

	</div>
	<div id="bas" align="center">
		<img src="images/geektic.jpg">
	</div>
</body>

</html>