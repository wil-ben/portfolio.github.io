<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <head>
            <title>CV de Wilhan Benrejdal</title>
            <style>
                body {
                    font-family: Arial, sans-serif;
                    margin: 20px;
                }
                h1 {
                    color: #333;
                    text-align: center;
                }
                table {
                    width: 100%;
                    border-collapse: collapse;
                    margin-bottom: 20px;
                }
                th, td {
                    padding: 10px;
                    text-align: left;
                    border: 1px solid #ccc;
                }
                th {
                    background-color: #f2f2f2;
                }
                a {
                    color: #007bff;
                    text-decoration: none;
                }
                a:hover {
                    text-decoration: underline;
                }
            </style>
        </head>
        <body>
            <h1>CV de Wilhan Benrejdal</h1>
            <table>
                <tr>
                    <th colspan="2">Información Personal</th>
                </tr>
                <tr>
                    <td>Nombre</td>
                    <td><xsl:value-of select="cv/personnel/nom"/></td>
                </tr>
                <tr>
                    <td>Teléfono</td>
                    <td><xsl:value-of select="cv/personnel/telephone"/></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><xsl:value-of select="cv/personnel/email"/></td>
                </tr>
                <tr>
                    <td>Edad</td>
                    <td><xsl:value-of select="cv/personnel/age"/></td>
                </tr>
                <tr>
                    <td>Dirección</td>
                    <td><xsl:value-of select="cv/personnel/adresse"/></td>
                </tr>
                <tr>
                    <td>Permiso de Conducir</td>
                    <td><xsl:value-of select="cv/personnel/permis"/></td>
                </tr>
                
                <tr>
                    <th colspan="2">Objetivo</th>
                </tr>
                <tr>
                    <td>Título</td>
                    <td><xsl:value-of select="cv/objectif/titre"/></td>
                </tr>
                <tr>
                    <td>Contrato</td>
                    <td><xsl:value-of select="cv/objectif/contrat"/></td>
                </tr>
                <tr>
                    <td>Ritmo</td>
                    <td><xsl:value-of select="cv/objectif/rythme"/></td>
                </tr>
                <tr>
                    <td>Disponibilidad</td>
                    <td><xsl:value-of select="cv/objectif/disponibilite"/></td>
                </tr>
                
                <tr>
                    <th colspan="2">Competencias</th>
                </tr>
                <tr>
                    <td>Hard Skills</td>
                    <td><xsl:value-of select="cv/competences/hard"/></td>
                </tr>
                <tr>
                    <td>Idiomas</td>
                    <td><xsl:value-of select="cv/competences/langues"/></td>
                </tr>
                <tr>
                    <td>Soft Skills</td>
                    <td><xsl:value-of select="cv/competences/soft"/></td>
                </tr>
                
                <tr>
                    <th colspan="2">Centros de Interés</th>
                </tr>
                <tr>
                    <td>Centros de Interés</td>
                    <td><xsl:value-of select="cv/centres_interet/interet"/></td>
                </tr>
                
                <tr>
                    <th colspan="2">LinkedIn</th>
                </tr>
                <tr>
                    <td>LinkedIn</td>
                    <td><a href="{cv/linkedin/url}"><xsl:value-of select="cv/linkedin/url"/></a></td>
                </tr>
            </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
