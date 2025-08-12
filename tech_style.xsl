<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/techFest">
  <html>
    <head>
      <title><xsl:value-of select="eventName"/></title>
    </head>
    <body>
      <h1><xsl:value-of select="eventName"/></h1>
      <h2><xsl:value-of select="eventDate"/></h2>
      
       <h3>Competitions</h3>
        <table>
          <thead>
            <tr>
              <th>Name</th>
              <th>Category</th>
              <th>Prize</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="competitions/competition">
              <tr>
                <td><xsl:value-of select="name"/></td>
                <td><xsl:value-of select="category"/></td>
                <td><xsl:value-of select="prizeAmount"/></td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
        
        <h3>Sponsors</h3>
        <ul>
          <xsl:for-each select="sponsors/sponsor">
            <xsl:sort select="@type"/>
            <li>
              <xsl:value-of select="name"/> - <xsl:value-of select="@type"/>
            </li>
          </xsl:for-each>
        </ul>
        
      </body>
  </html>
</xsl:template>
</xsl:stylesheet>