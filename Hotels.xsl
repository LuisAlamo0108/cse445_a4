<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Hotels List</title>
        <style>
          table {
            width: 100%;
            border-collapse: collapse;
          }
          th, td {
            border: 1px solid #aaa;
            padding: 8px;
            text-align: left;
          }
          th {
            background-color: #f2f2f2;
          }
        </style>
      </head>
      <body>
        <h2>Hotel Directory</h2>
        <table>
          <tr>
            <th>Name</th>
            <th>Address</th>
            <th>Phones</th>
            <th>Email</th>
            <th>Website</th>
            <th>Rating</th>
          </tr>
          <xsl:for-each select="Hotels/Hotel">
            <tr>
              <td><xsl:value-of select="Name"/></td>
              <td><xsl:value-of select="Address"/></td>
              <td>
                <xsl:for-each select="Contact/Phone">
                  <xsl:value-of select="."/>
                  <xsl:if test="position() != last()">, </xsl:if>
                </xsl:for-each>
              </td>
              <td><xsl:value-of select="Contact/Email"/></td>
              <td>
                <a>
                  <xsl:attribute name="href">
                    <xsl:value-of select="URL"/>
                  </xsl:attribute>
                  <xsl:value-of select="URL"/>
                </a>
              </td>
              <td><xsl:value-of select="Rating"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
