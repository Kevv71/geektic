<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
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

		<h3 align="center">Inscription Geektic</h3>
		<br>

		<form:form method="post" action="/inscription_geek" commandName="geek">
			
				Nom : <form:input path="nom" />
			<br>
				Prénom :  <form:input path="prenom" />
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
			<p>Avant de procéder à votre inscription définitive, vous devez
				manifester votre accord avec les règles suivantes :</p>

			<p>
				<strong>Règles du site</strong>
			</p>

			<p>L'inscription à ce site est gratuite ! Nous insistons sur le
				fait que vous devez respecter les règles détaillées ci-dessous. Si
				vous êtes d'accord avec les règles, veuillez cocher la case « J'ai
				lu les règles du site Geektic et j'accepte de les respecter. » et
				cliquer sur le bouton « S'inscrire ».</p>

			<p>En acceptant ces règles, vous vous engagez à n'écrire aucun
				message à caractère obscène, vulgaire, discriminatoire, menaçant,
				diffamatoire, injurieux ou contraire aux lois et règlements en
				vigueur.</p>

			<p>Vous autorisez les propriétaires du site Geektic à supprimer,
				modifier, déplacer ou fermer n'importe quel message pour n'importe
				quelle raison et sans autorisation préalable de votre part.</p>
			<br> <form:checkbox path="reglement" />Accepeter les
			règles
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