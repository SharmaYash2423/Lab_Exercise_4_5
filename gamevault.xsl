<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:gv="http://www.example.com/gamevault"
    exclude-result-prefixes="gv">

    <xsl:template match="/">
        <html>
            <head>
                <title>Game Vault</title>
                <style>
                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    th, td {
                        border: 1px solid black;
                        padding: 8px;
                        text-align: left;
                    }
                    th {
                        background-color: #f2f2f2;
                    }
                </style>
            </head>
            <body>
                <h1>Game Vault</h1>
                <table>
                    <tr>
                        <th>Game Name</th>
                        <th>Developer</th>
                        <th>Publisher</th>
                        <th>Genre</th>
                        <th>Platform</th>
                        <th>Rating</th>
                        <th>Release Year</th>
                        <th>Description</th>
                    </tr>
                    <xsl:for-each select="gv:gamevault/*">
                        <tr>
                            <td><xsl:value-of select="gv:Name"/></td>
                            <td><xsl:value-of select="gv:Developer"/></td>
                            <td><xsl:value-of select="gv:Publisher"/></td>
                            <td><xsl:value-of select="gv:Genre"/></td>
                            <td><xsl:value-of select="gv:Platform"/></td>
                            <td><xsl:value-of select="gv:Rating"/></td>
                            <td><xsl:value-of select="gv:ReleaseYear"/></td>
                            <td><xsl:value-of select="gv:Description"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
