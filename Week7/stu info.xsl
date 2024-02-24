<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <style>
          table {
            border-collapse: collapse;
            width: 100%;
          }
          th, td {
            border: 1px solid black;
            text-align: center;
			padding:2px;
          }
          
        </style>
      </head>
      <body>
        <h2>Student Information</h2>
        <table>
          <tr>
            <th rowspan="2">Student Id</th>
            <th colspan="2">Student Name</th>
            <th rowspan="2">Phone Number</th>
            <th colspan="2">Address</th>
            <th colspan="2">Result</th>
          </tr>
          <tr>
            <th>First name</th>
            <th>Last name</th>
            <th>Area</th>
            <th>City</th>
            <th>CGPA</th>
            <th>SGPA</th>
          </tr>
          <xsl:apply-templates select="StudentInfo/student"/>
        </table> 
      </body>
    </html>
  </xsl:template>

  <xsl:template match="student">
    <tr>
      <td><xsl:value-of select="sid"/></td>
      <td><xsl:value-of select="sname"/></td> 
      <td><xsl:value-of select="sname/@lname"/></td>
      <td><xsl:value-of select="phnum"/></td>
      <td><xsl:value-of select="addr/area"/></td>
      <td><xsl:value-of select="addr/city"/></td>
      <td><xsl:value-of select="res/@cgpa"/></td>
      <td><xsl:value-of select="res/sgpa"/></td>

    </tr>
  </xsl:template>

</xsl:stylesheet>