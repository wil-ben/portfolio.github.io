<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <head>
            <title>CV Wilhan Benrejdal</title>
        </head>
        <body>
            <h1>CV Wilhan Benrejdal</h1>
            <table border="1">
                <tr>
                    <th colspan="2">Information Personnelle</th>
                </tr>
                <tr>
                    <td>Nom</td>
                    <td><xsl:value-of select="cv/personnel/nom"/></td>
                </tr>
                <tr>
                    <td>Téléphone</td>
                    <td><xsl:value-of select="cv/personnel/telephone"/></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><xsl:value-of select="cv/personnel/email"/></td>
                </tr>
                <tr>
                    <td>Age</td>
                    <td><xsl:value-of select="cv/personnel/age"/></td>
                </tr>
                <tr>
                    <td>Adresse</td>
                    <td><xsl:value-of select="cv/personnel/adresse"/></td>
                </tr>
                <tr>
                    <td>Permis</td>
                    <td><xsl:value-of select="cv/personnel/permis"/></td>
                </tr>
                
                <tr>
                    <th colspan="2">Objectif</th>
                </tr>
                <tr>
                    <td>Titre</td>
                    <td><xsl:value-of select="cv/objectif/titre"/></td>
                </tr>
                <tr>
                    <td>Contrat</td>
                    <td><xsl:value-of select="cv/objectif/contrat"/></td>
                </tr>
                <tr>
                    <td>Rythme</td>
                    <td><xsl:value-of select="cv/objectif/rythme"/></td>
                </tr>
                <tr>
                    <td>Disponibilité</td>
                    <td><xsl:value-of select="cv/objectif/disponibilite"/></td>
                </tr>
                
                <tr>
                    <th colspan="2">Compétences</th>
                </tr>
                <tr>
                    <td>Hard Skills</td>
                    <td><xsl:value-of select="cv/competences/hard"/></td>
                </tr>
                <tr>
                    <td>Langues</td>
                    <td><xsl:value-of select="cv/competences/langues"/></td>
                </tr>
                <tr>
                    <td>Soft Skills</td>
                    <td><xsl:value-of select="cv/competences/soft"/></td>
                </tr>
                
                <tr>
                    <th colspan="2">Centres d'Intérêt</th>
                </tr>
                <tr>
                    <td>Centres d'Intérêt</td>
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
