<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:gv="http://www.example.com/gamevault"
  exclude-result-prefixes="gv">

  <xsl:template match="/">
    <html>
      <head>
        <title>Game Vault</title>
        <link rel="stylesheet" href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" />
      </head>
      <body class="container mx-auto">
        <h1 class="text-3xl font-bold text-center">Game Vault</h1>
        <table class="w-full border-collapse">
          <thead>
            <tr class="bg-gray-200">
              <th class="border px-4 py-2">Game Name</th>
              <th class="border px-4 py-2">Developer</th>
              <th class="border px-4 py-2">Publisher</th>
              <th class="border px-4 py-2">Genre</th>
              <th class="border px-4 py-2">Platform</th>
              <th class="border px-4 py-2">Rating</th>
              <th class="border px-4 py-2">Release Year</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="gv:gamevault/*">
              <tr>
                <td class="border px-4 py-2"><xsl:value-of select="gv:Name"/></td>
                <td class="border px-4 py-2"><xsl:value-of select="gv:Developer"/></td>
                <td class="border px-4 py-2"><xsl:value-of select="gv:Publisher"/></td>
                <td class="border px-4 py-2"><xsl:value-of select="gv:Genre"/></td>
                <td class="border px-4 py-2"><xsl:value-of select="gv:Platform"/></td>
                <td class="border px-4 py-2"><xsl:value-of select="gv:Rating"/></td>
                <td class="border px-4 py-2"><xsl:value-of select="gv:ReleaseYear"/></td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>