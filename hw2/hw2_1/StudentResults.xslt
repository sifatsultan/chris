<?xml version="1.0"?> <!-- Declare XML Version 1.0 -->
<!-- Define Style style sheet from http address -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="1.0">
	<!-- Use the parameter "sid" to uniquely pull the CourseANDID - Just the couse information required in the Studetn Results Page-->
	<xsl:param name="sid" />

	<xsl:template match="/">
		<!-- Link the CSS Style Sheet to the XSLT FIle and run with the XSLT file -->
		<link rel="stylesheet" href="assignment_style.css" />
		<html>
			<head>
				<!-- Title of Transformed XML TO HTML -->
				<title>Assighment 2 - Student Results</title>
				<!-- Start of Body of Content - TEXT, Photos etc -->
			</head>
			<body>
				<!-- Transform and Output a specific format of webpage design from the Tag FormatDisplayWebpage -->
				<FormatDisplayWebpage>
					<!--******* Use Div to uniquely set the Student Results Box ********* -->
					
					<div class="ResultsBox">

						<!--START Select Taged data for Looping and pull just uniquely the couse details based on the CourseANDID tag -->
						<xsl:for-each select="Students/Student/CourseDetails/Course[CourseANDID=$sid]"> <!-- Using Xpath pull the uniquely dataset from the XML dataset with "sid"-->

							<!--Output the Course Name in a Div format and specfic Course Font based from CSS Style Sheet (Class) -->
							<div class="CourseName">
								<p class="CourseFont">
									<xsl:value-of select="Name" />
								</p>
							</div>
							<!--Output the Course Credit Points in a Div format and specfic Course Credit Points Font based from CSS Style Sheet (Class) -->
							<div class="CreditPoints">
								<p class="CreditPointsFont">
									Credit Points:
								<span id="TotalCreditFont">	
									<xsl:value-of select="TOTALCREDITS" />
								</span>
								</p>
							</div>
							
							<!--Output Student details First and Last Name From XML Dataset  -->
								<div class="StudentResultDetails">
									<p class="StudentResultDetailsFont">
										Course Details For:
										<!-- Pull Student Personal Details First and Last Name by using XPATH to go back with  .. / .. / -->
										<span id="StudentDetailsFontColour">
										<xsl:value-of select="../../personaldetails/PreferredGivenNames" />
										<span class="CourseSpacing">
										<xsl:value-of select="../../personaldetails/Surname" /> (SN <xsl:value-of select="../../personaldetails/StudentID" />) 
										</span>
										</span>
									</p>
								</div>
							<!-- Output Student details and Date commenced from XML Dataset -->
								<div class="StudentCommenced">
									<p class="StudentCommencedFont">
										Commenced:
										<span id="CommencedDateFont">
										<xsl:value-of select="CommencedDate" />
										</span>			
									</p>
								</div>
							<!-- Output Student details and Date commenced from XML Dataset -->
												
							<div class="studentImg">
							<xsl:element name="img">
								<xsl:attribute name="src">
										<xsl:value-of select="../../personaldetails/PhotoID" />
									</xsl:attribute>
							</xsl:element>
							</div>
							<!-- Count the Total Credit Points based from the XML Dataset -->
							<div class="TotalCreditPoints">
								Total Credit Points:  
							<span id="TotalCreditPointsNum">	
						<!--<xsl:value-of select="count(Units/Unit)" />-->
							</span>
							</div>
							<!-- Count the Total Credit Points based from the XML Dataset -->			
							
							<!-- Count the Total Credit Points Remaining based from the XML Dataset -->
							<div class="CreditPointsRemain">
								Credit Points Remaining: 
							<span id="CreditPointsRemainNum">	
						<!--<xsl:value-of select="count(Units/Unit)" />-->
							</span>
							</div>
							<!-- Count the Total Credit Points Remaining based from the XML Dataset -->
														
							<!-- Count the Total Units Attempted based from the XML Dataset -->
							<div class="TotalUnits">
								Total Units Attempted:
							<span id="TotalUnitsNum">	
							<xsl:value-of select="count(Units/Unit)" />
							</span>
							</div>
							<!-- Count the Total Units Attempted based from the XML Dataset -->
							
							<!-- Count the Total Units Attempted based from the XML Dataset -->
							<div class="TotalUnitsPass">
								Total Units Passed:
							<span id="TotalUnitsPassNum">	
						<!--<xsl:value-of select="count(Units/Unit)" />-->
							</span>
							</div>
							<!-- Count the Total Units Attempted based from the XML Dataset -->
							
							<!--Output Student Details Course Average -->
							<div class="CourseAverage">
								Course Average:
							<span id="CourseAverageNum">	
						<!-- <xsl:value-of select="count(Units/Unit)" /> -->
							</span>
							</div>
							<!--Output Student Details Course Average -->
							
							<!--Output Student Details Course Average -->
							<div class="BestUnit">
								Best Unit: 
							<span id="BestUnitNum">	
						<!-- <xsl:value-of select="count(Units/Unit)" /> -->
							</span>
							</div>
							<!--Output Student Details Course Average -->
							<br/>
							<br/>
							<!--Create a Line Break between the two displayed output data-->
							<span id="LineBreak">
								--------------------------------------------------------------------
							</span>
							<!--Create a Line Break between the two displayed output data-->
							
							<!--Output the Unit Text as a Title-->
							<p class="Unit-title">
								Units
							</p>			
							
												
							<!--Loop through all the dataset for the CourseDetails - Units dataset and display in the student results -->
							<xsl:for-each select="Units/Unit">
								<div class="UnitsFormat">
								<p>
									<span class="space"> <!-- Set a class of character spaces in between the data with class span (uniquely set) -->
										<xsl:value-of select="unit_code" /> <!--Select the unit code in the xml dataset and display-->
									</span>
									<span class="Spaceing"> <!-- Set a class of character spaces in between the data with class span (uniquely set) -->
									<xsl:value-of select="unit_name" /> <!--Select the unit name in the xml dataset and display-->
									</span>
									<span class="Spaceing"> <!-- Set a class of character spaces in between the data with class span (uniquely set) -->
									<xsl:value-of select="unit_year" /> <!--Select the unit year in the xml dataset and display-->
									</span>
									<span class="Spaceing"> <!-- Set a class of character spaces in between the data with class span (uniquely set) -->
										<span id="UnitMark">
										<xsl:value-of select="unit_mark" /> <!--Select the unit mark in the xml dataset and display-->
										</span>
									</span>
									/
									<span class="Spaceing"> <!-- Set a class of character spaces in between the data with class span (uniquely set) -->
									
									</span>
									<span class="space" id="creditnumber"> <!--Use Class Span (space character) and uniquely format using cass id - First to space and secondly to uniquely format output dataset from XML-->
										<xsl:value-of select="unit_credit_points" /> <!--Select the unit code in the xml dataset and display-->
									</span>
									<span class="Spaceing"> <!-- Set a class of character spaces in between the data with class span (uniquely set) -->
									Credit Points
									</span>
								</p>
								</div>
																
							</xsl:for-each>										
												
							
							<!-- 
							int max = array.get(0);
							
							for (int i = 1; i < array.length; i++) {
							    if (array.get(i) > max) {
							      max = array.get(i);
							    }
							}
							 -->
							

						</xsl:for-each>
					</div>
					<br />
					<a href="assignment_2.xml">Back To Students</a>
					<br />
					<!-- Transform and Output a specific format of webpage design from the Tag FormatDisplayWebpage -->
				</FormatDisplayWebpage>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>