<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
   <html>
   <body>
      <!-- TABLA CON TODOS LOS MEDICAMENTOS-->
      <table border="5" cellpadding="10px">
         <tr>
            <th align="center" colspan="5" style="background-color: blue; font-size: 24px; color: white;" >Farmacia</th>
         </tr>
         <tr style="font-weight: bold; font-size:20px; background-color: lightskyblue;">
            <th align="center">Nombre</th>
            <th align="center">Via de administracion</th>
            <th align="center">Contenido</th>
            <th align="center">Precio</th>
         </tr>
         <xsl:for-each select="farmacia/medicamento">
            <tr style="color: blue;">
               <td ><xsl:value-of select="nombre"/></td>
               <td><xsl:value-of select="via-administracion"/></td>
               <td><xsl:value-of select="contenido"/></td>
               <td><xsl:value-of select="precio"/></td>
            </tr>
         </xsl:for-each>
      </table>
      <!-- TABLA CON TODOS LOS MEDICAMENTOS QUE CUESTAN MAS DE 100 PESOS-->
      <!--
      <table border="5" cellpadding="10px">
         <tr>
            <th align="center" colspan="5" style="background-color: blue; font-size: 24px; color: white;" >Farmacia</th>
         </tr>
         <tr style="font-weight: bold; font-size:20px; background-color: lightskyblue;">
            <th align="center">Nombre</th>
            <th align="center">Via de administracion</th>
            <th align="center">Contenido</th>
            <th align="center">Precio</th>
         </tr>
         <xsl:for-each select="farmacia/medicamento">
            <xsl:if test="precio > 100.00">
                <tr style="color: blue;">
                    <td><xsl:value-of select="nombre"/></td>
                    <td><xsl:value-of select="via-administracion"/></td>
                    <td><xsl:value-of select="contenido"/></td>
                    <td style="color:red"><xsl:value-of select="precio"/></td>
                </tr>
            </xsl:if>
         </xsl:for-each>
      </table>
      -->
      <!-- MEDICAMENTOS CON CATEGORIA DE CAPSULA Y COMPRIMIDO-->

      <!-- 
      <table border="5" cellpadding="10px">
         <tr>
            <th align="center" colspan="5" style="background-color: blue; font-size: 24px; color: white;" >Farmacia</th>
         </tr>
         <tr style="font-weight: bold; font-size:20px; background-color: lightskyblue;">
            <th align="center">Nombre</th>
            <th align="center">Via de administracion</th>
            <th align="center">Contenido</th>
            <th align="center">Precio</th>
         </tr>
         <xsl:for-each select="farmacia/medicamento">
            <xsl:sort select="contenido" order="ascending"/>
            <xsl:choose>
                <xsl:when test="@categoria='capsula'">
                    <tr style="color: blue;">
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:value-of select="via-administracion"/></td>
                        <td><xsl:value-of select="contenido"/></td>
                        <td><xsl:value-of select="precio"/></td>
                    </tr>
                </xsl:when>
                <xsl:when test="@categoria='comprimido'">
                    <tr style="color: red;">
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:value-of select="via-administracion"/></td>
                        <td><xsl:value-of select="contenido"/></td>
                        <td><xsl:value-of select="precio"/></td>
                    </tr>
                </xsl:when>
            </xsl:choose>
         </xsl:for-each>
      </table>
      -->
   </body>
   </html>
</xsl:template>


</xsl:stylesheet>