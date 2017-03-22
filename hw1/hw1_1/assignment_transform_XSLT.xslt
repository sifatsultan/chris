<?xml version="1.0"?> <!-- Declare XML Version 1.0 -->
<!-- Define Style style sheet from http address -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">

<!-- XPath Expression - Determine How the template is matched to the content in the source XML data -->

<!-- Match Tag from XML file & Take -->
	<!--<xsl:template match="FormatDisplayWebpage"> -->
		<!-- Use matched Tag and Display it as HTML -->
	
		<!-- Start OF HTML Web Transform -->
	<html>
	<body>
		<!-- Title of Transformed XML TO HTML -->
		<title>Assighment 1</title>
		<!-- Link the CSS Style Sheet to the XSLT FIle and run with the XSLT file-->
		<link rel="stylesheet" href="assignment_style.css"/>
		<!-- Start of Body of Content - TEXT, Photos etc -->
		<!-- Transform and Output the Tag FormatDisplayWebpage -->
		<FormatDisplayWebpage>
		<!-- Tell XSLT Transformer to get the text content of the matched tag "<xsl:template match="FormatDisplayWebpage"-->
			
		<!-- Label Personal Details -->
		<h2>Personal Details</h2>	
		<!-- Insert a break to force the looped text bellow the Label Personal Details -->
		<br/>
		<!-- Selet Taged data for Looping -->
		<xsl:for-each select="StudentsData/Students">		
		<!-- Loop through the values from the student data and display -->
		<p>StudentID: <xsl:value-of select="StudentID"/></p>
		<p>Title: <xsl:value-of select="StudentTitle"/></p>
		<p>Surname: <xsl:value-of select="Surname"/></p>
		<p>Preferred Given Name: <xsl:value-of select="PreferredGivenNames"/></p>
		<p>Gender: <xsl:value-of select="Gender"/></p>
		<p>Date Of Birth: <xsl:value-of select="DateOfBirth"/></p>
		<p>E-Mail: <xsl:value-of select="EMail"/></p>
		<xsl:element name="img">
		<xsl:attribute name="src">
		<xsl:value-of select="Photo" />
		</xsl:attribute>
		</xsl:element>
		<p>Student Start Date: <xsl:value-of select="StartDateCorr"/></p>
		
		<!-- Put a Line break after each student details -->	
		<hr />		
		<!--End of Tell XSLT Transformer to get the text content of the matched tag "<xsl:template match="FormatDisplayWebpage"-->		
		</xsl:for-each>
		</FormatDisplayWebpage>
		
			
			<!-- End of HTML Transformed Tag FormatDisplayWebpage XML TO HTML -->		
		<!-- End of HTML Transformed Tag UnitCode XML TO HTML -->
			
	</body>
	</html>
	<!-- End of XPath Expression -->
</xsl:template>
<!-- End of Define Style Sheet from http://www.w3.org/1999/XSL/Transform  address-->	
</xsl:stylesheet>