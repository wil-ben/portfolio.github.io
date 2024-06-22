<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>CV Wilhan Benrejdal</title>
            </head>
            <body>
                <table border="1">
                    <tr>
                        <th colspan="2">Information Personnelle</th>
                    </tr>
                    <tr>
                        <td>Nom</td>
                        <td><xsl:value-of select="CV/InformationPersonnelle/Nom"/></td>
                    </tr>
                    <tr>
                        <td>Téléphone</td>
                        <td><xsl:value-of select="CV/InformationPersonnelle/Telephone"/></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><xsl:value-of select="CV/InformationPersonnelle/Email"/></td>
                    </tr>
                    <tr>
                        <td>Age</td>
                        <td><xsl:value-of select="CV/InformationPersonnelle/Age"/></td>
                    </tr>
                    <tr>
                        <td>Adresse</td>
                        <td><xsl:value-of select="CV/InformationPersonnelle/Adresse"/></td>
                    </tr>
                    <tr>
                        <td>Permis</td>
                        <td><xsl:value-of select="CV/InformationPersonnelle/Permis"/></td>
                    </tr>
                    
                    <tr>
                        <th colspan="2">Objectif</th>
                    </tr>
                    <tr>
                        <td>Titre</td>
                        <td><xsl:value-of select="CV/Objectif/Titre"/></td>
                    </tr>
                    <tr>
                        <td>Contrat</td>
                        <td><xsl:value-of select="CV/Objectif/Contrat"/></td>
                    </tr>
                    <tr>
                        <td>Rythme</td>
                        <td><xsl:value-of select="CV/Objectif/Rythme"/></td>
                    </tr>
                    <tr>
                        <td>Disponibilité</td>
                        <td><xsl:value-of select="CV/Objectif/Disponibilite"/></td>
                    </tr>
                    
                    <tr>
                        <th colspan="2">Expériences Professionnelles</th>
                    </tr>
                    <xsl:for-each select="CV/ExperiencesProfessionnelles/Experience">
                        <tr>
                            <td>Poste</td>
                            <td><xsl:value-of select="Poste"/></td>
                        </tr>
                        <tr>
                            <td>Entreprise</td>
                            <td><xsl:value-of select="Entreprise"/></td>
                        </tr>
                        <tr>
                            <td>Type de contrat</td>
                            <td><xsl:value-of select="TypeContrat"/></td>
                        </tr>
                        <tr>
                            <td>Dates</td>
                            <td><xsl:value-of select="Dates"/></td>
                        </tr>
                        <tr>
                            <td>Tâches</td>
                            <td><xsl:value-of select="Taches"/></td>
                        </tr>
                    </xsl:for-each>

                    <tr>
                        <th colspan="2">Formation</th>
                    </tr>
                    <xsl:for-each select="CV/Formation">
                        <tr>
                            <td>Diplôme</td>
                            <td><xsl:value-of select="Diplome"/></td>
                        </tr>
                        <tr>
                            <td>Établissement</td>
                            <td><xsl:value-of select="Etablissement"/></td>
                        </tr>
                        <tr>
                            <td>Dates</td>
                            <td><xsl:value-of select="Dates"/></td>
                        </tr>
                    </xsl:for-each>

                    <tr>
                        <th colspan="2">Compétences</th>
                    </tr>
                    <tr>
                        <td>Hard Skills</td>
                        <td><xsl:value-of select="CV/Competences/HardSkills"/></td>
                    </tr>
                    <tr>
                        <td>Langues</td>
                        <td>
                            <xsl:for-each select="CV/Competences/Langues/Langue">
                                <xsl:value-of select="."/><xsl:if test="position()!=last()">, </xsl:if>
                            </xsl:for-each>
                        </td>
                    </tr>
                    <tr>
                        <td>Soft Skills</td>
                        <td><xsl:value-of select="CV/Competences/SoftSkills"/></td>
                    </tr>

                    <tr>
                        <th colspan="2">Projets</th>
                    </tr>
                    <xsl:for-each select="CV/Projets/Projet">
                        <tr>
                            <td>Projet</td>
                            <td><xsl:value-of select="."/></td>
                        </tr>
                    </xsl:for-each>

                    <tr>
                        <th colspan="2">Centres d'Intérêt</th>
                    </tr>
                    <tr>
                        <td>Centres d'Intérêt</td>
                        <td><xsl:value-of select="CV/Interets"/></td>
                    </tr>

                    <tr>
                        <th colspan="2">LinkedIn</th>
                    </tr>
                    <tr>
                        <td>LinkedIn</td>
                        <td><a href="{CV/LinkedIn}"><xsl:value-of select="CV/LinkedIn"/></a></td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
