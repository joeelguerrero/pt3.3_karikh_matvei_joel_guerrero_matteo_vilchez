<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      	<head>
			<style>
				.ull {
					list-style: none;
					margin: 0;
					padding: 0;
				}
				.lii {
					margin-bottom: 20px;
					border: 1px solid #ccc;
					padding: 10px;
					border-radius: 5px;
				}
				.h22 {
					margin-top: 0;
					margin-bottom: 10px;
				}
				.pp {
					margin: 0;
					margin-bottom: 10px;
				}
				
				nav {
					width: 100%;
					background-color: rgb(255, 255, 255);
					display: flex;
					justify-content: center;
					position: sticky;
					top: 0;
					border-top: solid 1px;
					border-bottom: solid 1px;
				}

				.menu {
					display: flex;
				}

				.menuli {
					list-style: none;
					margin: 20px;
				}

				.menulia {
					color: black;
					text-decoration: none;
					font-weight: bold;
				}

				.menu li a:hover {
					padding: 5px;
					background-color: #b5d118;
					color: white;
					border-radius: 15px;
				}
				.footer{
					background-color: black;
					box-shadow: 0 0 20px rgb(255, 255, 255);
					position: fixed;
					left: 0;
					right: 0;
					bottom: 0;
					width: 100%;
					justify-content: center;
					height: 5%;
					margin-top: 5%;
				}

				.footerul{
					display: flex;
					flex-direction: row;
					justify-content: center;
					height: 0%;
					margin-top: 0%;
				}

				.footerulli{
					margin: 20px;

				}

				.footerullia{
					color: white;
					text-shadow: 0 0 100px #fff;
				}
			</style>
			<title>Lista Receta</title>
			<!-- <link rel="stylesheet"  href="./listarecetas.css" type="text/css" /> -->
		</head>
		<body>
			<header>
				<nav>
					<ul class="menu">
						<li class="menuli"><a class="menulia" href="../../index.html">Inicio</a></li>
						<li class="menuli"><a class="menulia" href="../sobremi.html"> Sobre mí</a></li>
						<li class="menuli"><a class="menulia" href="./recetaslista.xml"> Recetas</a></li>
						<li class="menuli"><a class="menulia" href="../contacto.html">Contacto</a></li>
						<li class="menuli"><a class="menulia" href="../otrasCosas.html">Otras cosas</a></li>
					</ul>
				</nav>
			</header>
			<h1>Lista de Recetas</h1>
			<ul class="ull">
			<xsl:for-each select="recetas/receta">
				<li class="lii">
					<h2 class="h22"><xsl:value-of select="nombre"/></h2>
						<h3>Dificultad:</h3>
							<ul class="ull">
								<xsl:for-each select="dificultad">
								<p class="pp"><xsl:value-of select="."/></p>
								</xsl:for-each>
							</ul>
						<h3>Cocina:</h3>
							<xsl:for-each select="cocina">
								<p class="pp"><xsl:value-of select="."/></p>
							</xsl:for-each>
						<h3>Vegetariana:</h3>
							<xsl:for-each select="Vegetariana">
								<p class="pp"><xsl:value-of select="."/></p>
							</xsl:for-each>
						<h3>Celicos:</h3>
							<xsl:for-each select="celicos">
								<p class="pp"><xsl:value-of select="."/></p>
							</xsl:for-each>
						<h3>Tiempo:</h3>
							<xsl:for-each select="tiempo">
								<p class="pp"><xsl:value-of select="."/></p>
							</xsl:for-each>
				</li>
			</xsl:for-each>
			</ul>
			<footer class="footer">
				<ul class="footerul">
					<li class="footerulli"><a class="footerullia" href="https://es-es.facebook.com/">Facebook</a></li>
					<li class="footerulli"><a class="footerullia" href="https://twitter.com/?lang=ES"> Twitter</a></li>
					<li class="footerulli"><a class="footerullia" href="https://twitter.com/?lang=ES"> Twitter</a></li>
					<li class="footerulli"><a class="footerullia" href="https://www.instagram.com/">Instagram</a></li>
					<li class="footerulli"><a class="footerullia" href="https://www.pinterest.es/">Pinterest</a></li>
					<li class="footerulli"><a class="footerullia" href="https://www.google.com/intl/es/gmail/about/"> Email</a></li>
					<li class="footerulli"><a class="footerullia" href="https://es.wikipedia.org/wiki/RSS">RSS</a></li>
				</ul>
			</footer>
      	</body>
    </html>
  </xsl:template>
</xsl:stylesheet>
