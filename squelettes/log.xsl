<?xml version="1.0" encoding="ISO-8859-15"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
  <head>
    <style type="text/css">
      body {
        font-family: sans, Arial;
      }

      li.contracted, li.expanded {
        cursor: pointer;
      }
      
      li.contracted {
        list-style-image: url('squelettes/img/plus.png');
      }

      li.expanded {
        list-style-image: url('squelettes/img/minus.png');
      }

      li.contracted > ul, li.contracted > ol {
        display: none;
      }
      
      li.expanded > ul, li.expanded > ol {
        display: block;
      }
      
      li.expanded ul li {
      	list-style: disc;
      }
      
      li.expanded ol li {
      	list-style: decimal;
      }
    </style>
    <script type="text/javascript">
      function toggleList(id) {
        var list = document.getElementById(id);
        if (list.className == 'contracted')
          list.className = 'expanded';
        else
          list.className = 'contracted';
      }
    </script>
  </head>
  <body>
    <ul>
      <xsl:apply-templates/>
    </ul>
  </body>
</html>
</xsl:template>

<xsl:template match="date">
  <li><span style="font-weight:bold">Data: </span><xsl:value-of select="."/></li>
</xsl:template>

<xsl:template match="flags">
  <li id="flags" class="contracted" onclick="javascript:toggleList('flags');"><p style="font-weight:bold">Flags: <xsl:value-of select="count(flag)" />.</p>
  <ul>
  <xsl:apply-templates select="flag"/>
  </ul>
  </li>
</xsl:template>

<xsl:template match="flag">
  <li><xsl:value-of select="@name"/>: <xsl:value-of select="."/></li>
</xsl:template>

<xsl:template match="messages">
  <li id="messages" class="contracted" onclick="javascript:toggleList('messages');"><p style="font-weight:bold">Messages: <xsl:value-of select="count(message)" /> items (<xsl:value-of select="count(message[@type = 'info'])" /> informations, <xsl:value-of select="count(message[@type = 'warning'])" /> warnings, <xsl:value-of select="count(message[@type = 'error'])" /> errors).</p>
  <ol>
  <xsl:for-each select="message">
    <xsl:if test="@type = 'info'">
    <li style="color:#088"><span style="font-weight:bold">Info: </span><xsl:value-of select="."/></li>
    </xsl:if>
    <xsl:if test="@type = 'warning'">
    <li style="color:#880"><span style="font-weight:bold">Warning: </span><xsl:value-of select="."/></li>
    </xsl:if>
    <xsl:if test="@type = 'error'">
    <li style="color:#800"><span style="font-weight:bold">Error: </span><xsl:value-of select="."/></li>
    </xsl:if>
  </xsl:for-each>
  </ol>
  </li>
</xsl:template>

<xsl:template match="message">

</xsl:template>

</xsl:stylesheet> 

