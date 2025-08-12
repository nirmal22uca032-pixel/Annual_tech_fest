<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
<xsl:output method="html" indent="yes"/>

<xsl:template match="/">
<html>
<head>
    <title>Tech Fest Details</title>
    <style>
        body { background-color: #0000}
        body { font-family: Arial, sans-serif; }
        table { border-collapse: collapse; width: 60%; margin-bottom: 20px; }
        th, td { border: 1px solid black; padding: 8px; text-align: left; }
        th { background-color: #f2f2f2; }
    </style>
</head>
<body>
    <h1><xsl:value-of select="TechFest/EventName"/></h1>
    <h3>Date &amp; Time: <xsl:value-of select="TechFest/DateTime"/></h3>
    <h4>Venue: <xsl:value-of select="TechFest/Venue"/></h4>
    <p><b>Coordinator:</b> <xsl:value-of select="TechFest/Coordinator/Name"/> 
    (Contact: <xsl:value-of select="TechFest/Coordinator/Contact"/>)</p>

    <h2>Competitions</h2>
    <table>
        <tr>
            <th>Name</th>
            <th>Category</th>
            <th>Prize</th>
        </tr>
        <xsl:for-each select="TechFest/Competitions/Competition">
        <tr>
            <td><xsl:value-of select="Name"/></td>
            <td><xsl:value-of select="Category"/></td>
            <td><xsl:value-of select="Prize"/></td>
        </tr>
        </xsl:for-each>
    </table>

    <h2>Sponsors</h2>
    <ul>
        <xsl:for-each select="TechFest/Sponsors/Sponsor">
            <li><xsl:value-of select="Name"/> - <xsl:value-of select="Type"/></li>
        </xsl:for-each>
    </ul>
</body>
</html>
</xsl:template>
</xsl:stylesheet>