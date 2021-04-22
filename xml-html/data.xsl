<?xml version="1.0"?>
<!DOCTYPE root>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="root">
        <html>
            <head>
                <link rel="stylesheet" href="data.css" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            </head>
            <body>
                <h2>Počítače</h2>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Procesor</th>
                            <th>Grafická karta</th>
                            <th>Disky</th>
                            <th>Paměti</th>
                            <th>Základní deska</th>
                            <th>Skříň</th>
                            <th>Zdroj</th>
                            <th>Chladič</th>
                            <th>Ventilátory</th>
                            <th>Optická mechanika</th>
                            <th>Televizní karta</th>
                            <th>Síťová karta</th>
                            <th>Záznamová zařízení</th>
                            <th>Kabely</th>
                            <th>Cena</th>
                        </tr>
                    </thead>
                    <xsl:for-each select="pocitace/pocitac">
                        <xsl:sort select="id" data-type="number" order="ascending" />
                        <tr>
                            <td>
                                <xsl:value-of select="id" />
                            </td>
                            <td>
                                <xsl:value-of select="komponenty/procesor" />
                            </td>
                            <td>
                                <xsl:value-of select="komponenty/grafickaKarta" />
                            </td>
                            <td>
                                <xsl:value-of select="komponenty/disky" />
                            </td>
                            <td>
                                <xsl:value-of select="komponenty/pameti" />
                            </td>
                            <td>
                                <xsl:value-of select="komponenty/zakladniDeska" />
                            </td>
                            <td>
                                <xsl:value-of select="komponenty/skrin" />
                            </td>
                            <td>
                                <xsl:value-of select="komponenty/zdroj" />
                            </td>
                            <td>
                                <xsl:value-of select="komponenty/chlazeni/chladic" />
                            </td>
                            <td>
                                <xsl:value-of select="komponenty/chlazeni/ventilatory" />
                            </td>
                            <td>
                                <xsl:value-of select="komponenty/optickaMechanika" />
                            </td>
                            <td>
                                <xsl:value-of select="komponenty/televizniKarta" />
                            </td>
                            <td>
                                <xsl:value-of select="komponenty/sitovaKarta" />
                            </td>
                            <td>
                                <xsl:value-of select="komponenty/zaznamoveZarizeni" />
                            </td>
                            <td>
                                <xsl:value-of select="komponenty/kabely" />
                            </td>
                            <td>
                                <xsl:value-of select="cena" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>