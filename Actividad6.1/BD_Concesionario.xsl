<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
 <html>
 <body>
    <h2>Lista de Coches</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Código</th>
        <th>Marca</th>
        <th>Modelo</th>
        <th>Año</th>
        <th>Color</th>
        <th>Precio</th>
      </tr>
      <xsl:for-each select="Concesionario/coche">
      <tr>
        <td><xsl:value-of select="Cod_Coche"/></td>
        <td><xsl:value-of select="Marca"/></td>
        <td><xsl:value-of select="Modelo"/></td>
        <td><xsl:value-of select="Año"/></td>
        <td><xsl:value-of select="Color"/></td>
        <td><xsl:value-of select="Precio"/></td>
      </tr>
      </xsl:for-each>
    </table>
 </body>
 </html>
</xsl:template>

</xsl:stylesheet>