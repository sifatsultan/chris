<?xml version="1.0"?> <!-- Declare XML Version 1.0 -->
<!-- Define Style style sheet from http address -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="1.0">
	<xsl:template match="/">

		<!-- XPath Expression - Determine How the template is matched to the content 
			in the source XML data -->

		<!-- Start OF HTML Web Transform -->
		<html>
			<head>
				<meta http-equiv="content-type" content="text/html; charset=utf-8" />
				<!-- javascript processor for loading the xslts with the xml -->
				<script language="javascript" type="text/javascript" src="processxml.js"></script>

			</head>
			<!-- Start of Body of Content - TEXT, Photos etc -->
			<body>
				<div id="main_body">
					<!-- Title of Transformed XML TO HTML -->
					<title>Assighment 2</title>
					<!-- Link the CSS Style Sheet to the XSLT FIle and run with the XSLT 
						file -->
					<link rel="stylesheet" href="assignment_style.css" />
					<!-- Transform and Output the Tag FormatDisplayWebpage -->
					<FormatDisplayWebpage>
						<!-- Tell XSLT Transformer to get the text content of the matched tag 
							"<xsl:template match="FormatDisplayWebpage" -->

						<!-- Insert a break to force the looped text bellow the Label Personal 
							Details -->
						<br />
						<br />
						<!--******* Loop through dataset Students/Studentand display ********* -->

						<!--START Selet Taged data for Looping -->
						<xsl:for-each select="Students/Student">
							<!--Sort all displayed data by Surname -->
							<xsl:sort select="personaldetails/Surname" data-type="text"
								order="ascending" />
							<!-- Label Personal Details -->
							<h2>Personal Details</h2>
							<!-- Pull image from folder and display -->
							<xsl:element name="img">
								<xsl:attribute name="src">
										<xsl:value-of select="personaldetails/PhotoID" />
									</xsl:attribute>
							</xsl:element>
							<div class="wrapper-personaldetails"> <!-- **** START Wrap all the Student Personal Details to the right of the 
									image **** -->
								<!-- Looped Student Peronal Details -->

								<p>
									<label>
										StudentID:
									</label>
									<xsl:value-of select="personaldetails/StudentID" /> <!-- Select dataset from XML and output nex to label -->
								</p>
								<p>
									<label>
										Title:
									</label>
									<xsl:value-of select="personaldetails/StudentTitle" /> <!-- Select dataset from XML and output nex to label -->
								</p>
								<p>
									<label>
										Surname:
									</label>
									<xsl:value-of select="personaldetails/Surname" /> <!-- Select dataset from XML and output nex to label -->
								</p>
								<p>
									<label>
										Preferred Given Name:
									</label>
									<xsl:value-of select="personaldetails/PreferredGivenNames" /> <!-- Select dataset from XML and output nex to label -->
								</p>
								<p>
									<label>
										Gender:
									</label>
									<xsl:value-of select="personaldetails/Gender" /> <!-- Select dataset from XML and output nex to label -->
								</p>
								<p>
									<label>
										Date Of Birth:
									</label>
									<xsl:value-of select="personaldetails/DateOfBirth" /> <!-- Select dataset from XML and output nex to label -->
								</p>
								<p>
									<label>
										E-Mail:
									</label>
									<xsl:value-of select="personaldetails/EMail" /> <!-- Select dataset from XML and output nex to label -->
								</p>

							</div>								<!-- **** END Wrap all the Student Personal Details to the right of the image 
								**** -->

							<!-- Put a boarder around the address details using DIV class -->
							<div class="AddressBoxtable">
								<!-- Adress Details Label -->
								<h3>Address Details</h3>
								<!--Correspondance Address Lable -->
								<h4>Correspondance Address:</h4>

								<!-- Looped Correspondance Address Details -->
								<p class="c-CorrespondanceAddress"> <!-- class - Seperate style of paragraph from others -->
									<label> <!-- Display Label as bold -->
										Start Date:
									</label>
									<xsl:value-of select="Addresses/CorrespondanceAddress/StartDate" /> <!-- Select dataset from XML and output nex to label -->
								</p>

								<p class="c-CorrespondanceAddress"> <!-- class - Seperate style of paragraph from others -->
									<label> <!-- Display Label as bold -->
										Address Line 1:
									</label>
									<xsl:value-of select="Addresses/CorrespondanceAddress/AddressLineOne" /> <!-- Select dataset from XML and output nex to label -->
								</p>
								<p class="c-CorrespondanceAddress"> <!-- class - Seperate style of paragraph from others -->
									<label> <!-- Display Label as bold -->
										Address Line 2:
									</label>
									<xsl:value-of select="Addresses/CorrespondanceAddress/AddressLineTwo" /> <!-- Select dataset from XML and output nex to label -->
								</p>
								<p class="c-CorrespondanceAddress"> <!-- class - Seperate style of paragraph from others -->
									<label> <!-- Display Label as bold -->
										Address Line 3:
									</label>
									<xsl:value-of
										select="Addresses/CorrespondanceAddress/AddressLineThree" /> <!-- Select dataset from XML and output nex to label -->
								</p>
								<p class="c-CorrespondanceAddress"> <!-- class - Seperate style of paragraph from others -->
									<label> <!-- Display Label as bold -->
										Suburb:
									</label>
									<xsl:value-of select="Addresses/CorrespondanceAddress/Suburb" />
								</p>
								<p class="c-CorrespondanceAddress"> <!-- class - Seperate style of paragraph from others -->
									<label> <!-- Display Label as bold -->
										Post Code:
									</label>
									<xsl:value-of select="Addresses/CorrespondanceAddress/PostCode" /> <!-- Select dataset from XML and output nex to label -->
								</p>

								<div class="wrapper-CorrespondancePhoneNumbers"> <!-- **** START Wrap all Address Phone Number Details to the right of the 
										Other Address Details **** -->
									<p class="c-addressPhoneNumbers">
										<label>
											Home Phone No:
										</label>
										<xsl:value-of select="Addresses/CorrespondanceAddress/HomePhoneNo" /> <!-- Select dataset from XML and output nex to label -->
									</p>
									<p class="c-addressPhoneNumbers"> <!-- class - Seperate style of paragraph from others -->
										<label>
											Work Phone No:
										</label>
										<xsl:value-of select="Addresses/CorrespondanceAddress/WorkPhoneNo" />  <!-- Select dataset from XML and output nex to label -->
									</p>
									<p class="c-addressPhoneNumbers"> <!-- class - Seperate style of paragraph from others -->
										<label>
											Mobile Phone No:
										</label>
										<xsl:value-of select="Addresses/CorrespondanceAddress/MobilePhone" />  <!-- Select dataset from XML and output nex to label -->
									</p>
									<p class="c-addressPhoneNumbers"> <!-- class - Seperate style of paragraph from others -->
										<label>
											Fax No:
										</label>
										<xsl:value-of select="Addresses/CorrespondanceAddress/FaxNo" />  <!-- Select dataset from XML and output nex to label -->
									</p>
								</div> 								<!-- **** END Wrap all Address Details to the right of the image **** -->

								<!-- Home Details Label -->
								<h5>Home Details:</h5>

								<!-- Looped Home Address Details -->
								<p class="c-HomeAddress"> <!-- class - Seperate style of paragraph from others -->
									<label> <!-- Display Label as bold -->
										Start Date:
									</label>
									<xsl:value-of select="Addresses/HomeAddress/StartDate" />
								</p>

								<p class="c-HomeAddress"> <!-- class - Seperate style of paragraph from others -->
									<label> <!-- Display Label as bold -->
										Address Line 1:
									</label>
									<xsl:value-of select="Addresses/HomeAddress/AddressLineOne" />  <!-- Select dataset from XML and output nex to label -->
								</p>
								<p class="c-HomeAddress"> <!-- class - Seperate style of paragraph from others -->
									<label> <!-- Display Label as bold -->
										Address Line 2:
									</label>
									<xsl:value-of select="Addresses/HomeAddress/AddressLineTwo" />  <!-- Select dataset from XML and output nex to label -->
								</p>
								<p class="c-HomeAddress"> <!-- class - Seperate style of paragraph from others -->
									<label> <!-- Display Label as bold -->
										Address Line 3:
									</label>
									<xsl:value-of select="Addresses/HomeAddress/AddressLineThree" />  <!-- Select dataset from XML and output nex to label -->
								</p>
								<p class="c-HomeAddress"> <!-- class - Seperate style of paragraph from others -->
									<label> <!-- Display Label as bold -->
										Suburb:
									</label>
									<xsl:value-of select="Addresses/HomeAddress/Suburb" />  <!-- Select dataset from XML and output nex to label -->
								</p>
								<p class="c-HomeAddress"> <!-- class - Seperate style of paragraph from others -->
									<label> <!-- Display Label as bold -->
										Post Code:
									</label>
									<xsl:value-of select="Addresses/HomeAddress/PostCode" />  <!-- Select dataset from XML and output nex to label -->
								</p>

								<div class="wrapper-HomePhoneNumbers"> <!-- **** START Wrap all Address Phone Number Details to the right of the 
										Other Address Details **** -->
									<p class="c-HomePhoneNumbers">
										<label>
											Home Phone No:
										</label>
										<xsl:value-of select="Addresses/HomeAddress/HomePhoneNo" />  <!-- Select dataset from XML and output nex to label -->
									</p>
									<p class="c-HomePhoneNumbers">
										<label>
											Work Phone No:
										</label>
										<xsl:value-of select="Addresses/HomeAddress/WorkPhoneNo" />  <!-- Select dataset from XML and output nex to label -->
									</p>
									<p class="c-HomePhoneNumbers">
										<label>
											Mobile Phone No:
										</label>
										<xsl:value-of select="Addresses/HomeAddress/MobilePhone" />  <!-- Select dataset from XML and output nex to label -->
									</p>
									<p class="c-HomePhoneNumbers">
										<label>
											Fax No:
										</label>
										<xsl:value-of select="Addresses/HomeAddress/FaxNo" />
									</p>
								</div>
								<!-- **** END Wrap all Address Phone Number Details to the right 
									of the Other Address Details **** -->
							</div>

							<!-- Student Count of Courses and Notes / Status -->
							<p class="c-CourseCount">

								<h6>
									Student Courses Enrolled:
									<xsl:value-of select="count(CourseDetails/Course)" />
								</h6>
							</p>
							<p>
								<h7>
									Student Notes:
									<xsl:value-of select="count(CourseDetails/NoteDetails/Notes)" />
								</h7>
							</p>
							<!-- End Student Count of Courses and notes -->

							<!-- COURSE DETAILS TABLE - DIV Alighment send to CSS -->
							<div class="CourseTable">
								<!-- Table settings -->
								<table border="2">
									<!--Table Headings -->
									<tr>
										<th>
											<h3 class="Heading">Course Attempts</h3>
										</th>

										<th>
											<h3 class="Heading">Status</h3>
										</th>
									</tr>

									<!-- Loop Through and display Course details on table -->
									<xsl:for-each select="CourseDetails/Course">
										<!--Table Data Pulled from XML -->
										<tr> <!-- Display data in colloms -->
											<!--Loop throug student Course details and put in table under 
												heading with a font setting -->
											<td> <!-- Display data in colloms -->
												<p class="CourseDetailsFont"> <!-- Display hyper link in a font type -->
													<!--Hyperlink to go to Student Results Page -->

													<a>
														<xsl:attribute name="href">javascript:void(0)</xsl:attribute>
														<xsl:attribute name="onclick">javascript:transform('<xsl:value-of
															select="CourseANDID" />');</xsl:attribute>
														<!-- Pull XML data Course Code and display as the Course Code hyperlink -->
														<xsl:value-of select="code" />
													</a>

													<!-- End Of Hyperlink to Student Results Page -->
												</p>
											</td> <!-- Display Table Colom next to Course Attempts -->
											<td>
												<p class="StatusFont">
													<xsl:value-of select="Status" />
												</p>
											</td> <!-- Display Table Colom next to Course Attempts -->
										</tr>

									</xsl:for-each> <!-- END of LOOP through Course Details on table -->
								</table> 	<!-- END of Table settings -->
							</div> <!-- COURSE DETAILS TABLE - DIV Alighment send to CSS -->

							<!-- End of Table Settings -->
						</xsl:for-each> <!-- ******* END Loop through dataset Students/Studentand display ********* -->
						<!-- Total Number of Students -->
						<h8>
							Total Students Enrolled:
							<xsl:value-of select="count(Students/Student)" />
						</h8>
					</FormatDisplayWebpage> <!-- END Of format the webpage boader -->
					<!-- End of HTML Transformed Tag FormatDisplayWebpage XML TO HTML -->
				</div>
			</body>
		</html>
		<!-- End of XPath Expression -->
	</xsl:template>
	<!-- End of Define Style Sheet from http://www.w3.org/1999/XSL/Transform 
		address -->
</xsl:stylesheet>