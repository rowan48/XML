<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
  <head>
  </head>
  <body>
  <h2>Employees</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th align="left">Name</th>
      <th align="left">Email</th>
      <th align="left">Mobile Phone</th>
      <th align="left">Address</th>
    </tr>
  <xsl:for-each select="company/Employee">
    <tr>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="Email"/></td>
      <td><xsl:value-of select="Addresses/adress/Region"/></td>
      <td><xsl:value-of select="Phones/Phone[@Type = 'Mobile']"/></td>
    </tr>
        </xsl:for-each>
  </table>
  </body>
  </html>
  </xsl:template>
</xsl:stylesheet>
