<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
 <html>
 <body>
     <h2>Lista de Libros</h2>
     <table border="1">
       <tr>
         <th>Título</th>
         <th>Autor</th>
         <th>Editorial</th>
         <th>Edición</th>
         <th>ISBN</th>
         <th>Número de páginas</th>
       </tr>
       <xsl:for-each select="Libros/libro">
         <tr>
           <td><xsl:value-of select="Titulo"/></td>
           <td><xsl:value-of select="Autores/autor/Nombre"/> <xsl:value-of select="Autores/autor/Apellidos"/></td>
           <td><xsl:value-of select="Editorial"/></td>
           <td><xsl:value-of select="Edicion"/></td>
           <td><xsl:value-of select="ISBN"/></td>
           <td><xsl:value-of select="NumPaginas"/></td>
         </tr>
       </xsl:for-each>
     </table>
 </body>
 </html>
</xsl:template>

</xsl:stylesheet>