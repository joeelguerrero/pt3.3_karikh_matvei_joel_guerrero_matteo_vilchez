<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <style>
          ul {
            list-style: none;
            margin: 0;
            padding: 0;
          }
          li {
            margin-bottom: 20px;
            border: 1px solid #ccc;
            padding: 10px;
            border-radius: 5px;
          }
          h2 {
            margin-top: 0;
            margin-bottom: 10px;
          }
          p {
            margin: 0;
            margin-bottom: 10px;
          }
        </style>
      </head>
      <body>
        <h1>Recetas</h1>
        <ul>
          <xsl:for-each select="recetas/receta">
            <li>
              <h2><xsl:value-of select="nombre"/></h2>
              <h3>Ingredientes:</h3>
              <ul>
                <xsl:for-each select="ingredientes/ingrediente">
                  <li><xsl:value-of select="."/></li>
                </xsl:for-each>
              </ul>
              <h3>Preparación:</h3>
              <xsl:for-each select="preparacion/paso">
                <p><xsl:value-of select="."/></p>
              </xsl:for-each>
            </li>
          </xsl:for-each>
        </ul>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>