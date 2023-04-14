<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      	<head>
			<link rel="stylesheet"  href="../../CSS/estilo.css" type="text/css" />
    	</head>
      	<body>
			<header>
				<div class="logo">
					<a href="../../index.html"><img src="../../imatges/Logo-Delicias.png"></a>
				</div>
				<nav>
					<ul class="menu">
						<li><a href="../../index.html">Inicio</a></li>
						<li><a href="../sobremi.html"> Sobre mí</a></li>
						<li><a href="../recetas/recetaslista.xml"> Recetas</a></li>
						<li><a href="../contacto.html">Contacto</a></li>
						<li><a href="../otrasCosas.html">Otras cosas</a></li>
					</ul>
    			</nav>
			</header>
			<h1>Recetas</h1>
			<ul class="listas">
			<xsl:for-each select="recetas/receta">
				<li class="liLista">
				<h2 class="h2listas"><xsl:value-of select="nombre"/></h2>
				<h3>Dificultad:</h3>
				<ul class="listas">
					<xsl:for-each select="dificultad">
					<p class="plistas"><xsl:value-of select="."/></p>
					</xsl:for-each>
				</ul>
				<h3>Cocina:</h3>
				<xsl:for-each select="cocina">
					<p class="plistas"><xsl:value-of select="."/></p>
				</xsl:for-each>
				<h3>Vegetariana:</h3>
				<xsl:for-each select="Vegetariana">
					<p class="plistas"><xsl:value-of select="."/></p>
				</xsl:for-each>
				<h3>Celicos:</h3>
				<xsl:for-each select="celicos">
					<p class="plistas"><xsl:value-of select="."/></p>
				</xsl:for-each>
				<h3>Tiempo:</h3>
				<xsl:for-each select="tiempo">
					<p class="plistas"><xsl:value-of select="."/></p>
				</xsl:for-each>
				</li>
			</xsl:for-each>
			</ul>
      	</body>
    </html>
  </xsl:template>
</xsl:stylesheet>
