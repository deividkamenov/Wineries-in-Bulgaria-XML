<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:output method="xml" version="1.0" indent="yes"/>
    <xsl:template match="/">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master page-height="297mm" page-width="210mm"
                                       margin="5mm 25mm 5mm 25mm" master-name="page">
                    <fo:region-body margin="20mm 0mm 20mm 0mm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <!--===========================HeaderPage===============================-->

            <fo:page-sequence master-reference="page">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block-container position="absolute" top="-2.5cm" left="-2.5cm">
                        <fo:block position="absolute" text-align="center" font-weight="bold" margin-left="2cm"
                                  font-family="Arial" font-size="48pt" padding-before="50mm" color="black">
                            <fo:block margin-bottom="30mm">
                                Каталог на винарни в България
                            </fo:block>
                            <fo:external-graphic src="./wineries.jpg" text-align="center" padding-after="10mm"
                                                 margin-bottom="30mm" content-height="400" content-width="580"/>
                        </fo:block>
                    </fo:block-container>
                </fo:flow>
            </fo:page-sequence>

            <!--===============================WineryRegions=================================-->

            <fo:page-sequence master-reference="page">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block-container position="relative" top="-2.5cm" left="-2.5cm">


                        <fo:block position="relative" text-align="center" font-family="Arial" font-weight="bold"
                                  font-size="22pt" color="black" padding-before="5mm">
                            Розова долина
                        </fo:block>

                        <fo:block position="relative" padding-before="5mm">
                            <xsl:for-each select="catalog/region[@id='region1']/winery">
                                <xsl:apply-templates select="."/>
                            </xsl:for-each>
                        </fo:block>

                        <fo:block position="relative" text-align="center" font-family="Arial" font-weight="bold"
                                  font-size="22pt" color="black" padding-before="5mm">
                            Северозападен район
                        </fo:block>

                        <fo:block position="relative" padding-before="5mm">
                            <xsl:for-each select="catalog/region[@id='region2']/winery">
                                <xsl:apply-templates select="."/>
                            </xsl:for-each>
                        </fo:block>

                        <fo:block position="relative" text-align="center" font-family="Arial" font-weight="bold"
                                  font-size="22pt" color="black" padding-before="5mm">
                            Дунавска равнина
                        </fo:block>

                        <fo:block position="relative" padding-before="5mm">
                            <xsl:for-each select="catalog/region[@id='region3']/winery">
                                <xsl:apply-templates select="."/>
                            </xsl:for-each>
                        </fo:block>

                        <fo:block position="relative" text-align="center" font-family="Arial" font-weight="bold"
                                  font-size="22pt" color="black" padding-before="5mm">
                            Южен черноморски район
                        </fo:block>

                        <fo:block position="relative" padding-before="5mm">
                            <xsl:for-each select="catalog/region[@id='region4']/winery">
                                <xsl:apply-templates select="."/>
                            </xsl:for-each>
                        </fo:block>

                        <fo:block position="relative" text-align="center" font-family="Arial" font-weight="bold"
                                  font-size="22pt" color="black" padding-before="5mm">
                            Долината на Струма
                        </fo:block>

                        <fo:block position="relative" padding-before="5mm">
                            <xsl:for-each select="catalog/region[@id='region5']/winery">
                                <xsl:apply-templates select="."/>
                            </xsl:for-each>
                        </fo:block>

                        <fo:block position="relative" text-align="center" font-family="Arial" font-weight="bold"
                                  font-size="22pt" color="black" padding-before="5mm">
                            Сакар
                        </fo:block>

                        <fo:block position="relative" padding-before="5mm">
                            <xsl:for-each select="catalog/region[@id='region6']/winery">
                                <xsl:apply-templates select="."/>
                            </xsl:for-each>
                        </fo:block>

                        <fo:block position="relative" text-align="center" font-family="Arial" font-weight="bold"
                                  font-size="22pt" color="black" padding-before="5mm">
                            Източна тракийска низина
                        </fo:block>

                        <fo:block position="relative" padding-before="5mm">
                            <xsl:for-each select="catalog/region[@id='region7']/winery">
                                <xsl:apply-templates select="."/>
                            </xsl:for-each>
                        </fo:block>

                        <fo:block position="relative" text-align="center" font-family="Arial" font-weight="bold"
                                  font-size="22pt" color="black" padding-before="5mm">
                            Западна тракийска низина
                        </fo:block>

                        <fo:block position="relative" padding-before="5mm">
                            <xsl:for-each select="catalog/region[@id='region8']/winery">
                                <xsl:apply-templates select="."/>
                            </xsl:for-each>
                        </fo:block>


                    </fo:block-container>
                </fo:flow>
            </fo:page-sequence>

        </fo:root>
    </xsl:template>


    <!--===============================WineryTemplate=================================-->

    <xsl:template match="winery">

        <fo:block position="relative" text-align="center" font-family="Arial" font-style="italic" font-weight="bold"
                  color="black" font-size="19pt"
                  padding-before="5mm">
            <xsl:value-of select="./name/text()"/>
        </fo:block>

        <fo:block position="absolute" text-align="center" padding-before="10mm" padding-after="5mm">
            <xsl:apply-templates select="./image"/>
        </fo:block>

        <fo:block position="relative" font-family="Arial" font-weight="bold" font-size="14pt" color="black"
                  padding-before="5mm">
            Населено място:
            <fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
                <xsl:value-of select="./location/text()"/>
            </fo:inline>

        </fo:block>

        <fo:block position="relative" font-family="Arial" font-weight="bold" font-size="14pt" color="black"
                  padding-before="5mm">
            Година на създаване:
            <fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
                <xsl:value-of select="./year/text()"/>
            </fo:inline>

        </fo:block>

        <fo:block position="relative" font-family="Arial" font-weight="bold" font-size="14pt" color="black"
                  padding-before="5mm">
            Сортове:
            <fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
                <xsl:value-of select="./grapes/text()"/>
            </fo:inline>

        </fo:block>

        <fo:block position="relative" font-weight="bold" font-family="Arial" color="black" font-size="14pt"
                  padding-before="5mm" padding-after="5mm">
            Описание:
            <fo:block position="relative" padding-before="5mm" padding-left="5mm" font-weight="normal" font-size="14pt">
                <xsl:apply-templates select="./description/text()"/>
            </fo:block>
        </fo:block>

        <fo:block position="relative" font-weight="bold" font-family="Arial" color="black" font-size="15pt"
                  padding-before="5mm" padding-after="5mm">
            Вина:
            <fo:block position="relative" padding-before="5mm" page-break-after="always" font-size="14pt">
                <xsl:for-each select="./wine">
                    <xsl:apply-templates select="."/>
                </xsl:for-each>
            </fo:block>
        </fo:block>

    </xsl:template>

    <!--===============================ImageTemplate===========================-->

    <xsl:template match="image">
        <fo:external-graphic src="{unparsed-entity-uri(@src)}" content-height="640" content-width="800"/>
    </xsl:template>

    <!--===============================WineTemplate=================================-->

    <xsl:template match="wine">
        <fo:block position="relative" font-weight="bold" font-family="Arial" color="black" padding-before="5mm"
                  font-size="13pt">
            Име на вино:
            <fo:inline position="relative" font-weight="normal" padding-left="5mm" font-size="13pt">
                <xsl:value-of select="./name/text()"/>
            </fo:inline>
        </fo:block>


        <fo:block position="absolute" text-align="center" padding-before="10mm">
            <xsl:apply-templates select="./image"/>
        </fo:block>

        <fo:block position="relative" font-weight="bold" font-family="Arial" color="black" padding-before="5mm"
                  font-size="13pt">
            Година:
            <fo:inline position="relative" font-weight="normal" padding-left="5mm" font-size="13pt">
                <xsl:value-of select="./year/text()"/>
            </fo:inline>
        </fo:block>

        <fo:block position="relative" font-family="Arial" font-weight="bold" font-size="13pt" color="black"
                  padding-before="5mm">
            Сорт:
            <fo:inline position="relative" font-weight="normal" padding-left="5mm" font-size="13pt">
                <xsl:value-of select="./grapes/text()"/>
            </fo:inline>
        </fo:block>

        <fo:block position="relative" font-family="Arial" font-weight="bold" font-size="13pt" color="black"
                  padding-before="5mm">
            Описание:
            <fo:inline position="relative" font-weight="normal" padding-left="5mm" font-size="13pt">
                <xsl:value-of select="./description/text()"/>
            </fo:inline>
        </fo:block>

    </xsl:template>

</xsl:stylesheet>