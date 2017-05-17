<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<form id="formId" name="form1" enctype="multipart/form-data" method="post" action="${pageContext.request.contextPath}/applicantAction_application.action">
	<table border="1">
		<tr>
			<td>
				<label>Mr. / Ms. / Miss</label><br/>
				<select id="call">
					<option>Mr.</option>
				 	<option>Ms.</option>
				 	<option>Miss</option>
				</select>
			</td>
			<td>
				<label>Family Name:</label><br/>
				<input type="text" id="familyName"/>
			</td>
			<td colspan='3'>
				<label>First & Middle Name: </label><br/>
				<input type="text" id="firstMiddleName"/>
			</td>
		</tr>
		<tr>
			<td>
				<label>Age:</label><br/>
				<input type="text" id="age"/>
			</td>
			<td>
				<label>Date of Birth:</label><br/>
				<input type="text" id="birthday"/>
			</td>
			<td colspan='2'>
				<label>Place of Birth: </label><br/>
				<input type="text" id="place"/>
			</td>
			<td>
				<label>Male / Female: </label><br/>
				<select id="sex">
					<option>Male</option>
	 				<option>Female</option>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan='5'>
				<label>Address:</label><br/>
				<input type="text" id="address"/>
			</td>
		</tr>
		<tr>
			<td colspan='3'>
				<label>City:</label><br/>
				<input type="text" id="city"/>
			</td>
			<td>
				<label>State/Province:</label><br/>
				<input type="text" id="state"/>
			</td>
			<td>
				<label>Postal / Zip Code:</label><br/>
				<input type="text" id="postal"/>
			</td>
		</tr>
		<tr>
			<td colspan='3'>
				<label>Country of Residence:</label><br/>
				<input type="text" id="country"/>
			</td>
			<td>
				<label>Native Language:</label><br/>
				<input type="text" id="natives"/>
			</td>
			<td>
				<label>Second Language:</label><br/>
				<input type="text" id="secondLanguage"/>
			</td>
		</tr>
		<tr>
			<td colspan='3'>
				<label>Nationality:</label><br/>
				<input type="text" id="nationality"/>
			</td>
			<td>
				<label>Passport No:</label><br/>
				<input type="text" id="passport"/>
			</td>
			<td>
				<label>Passport Expiry Date:</label><br/>
				<input type="text" id="date"/>
			</td>
		</tr>
		<tr>
			<td colspan='3'>
				<label>Home Tel with Country & City Code:</label><br/>
				<input type="text" id="homeTel"/>
			</td>
			<td>
				<label>Work Tel with Country & City Code:</label><br/>
				<input type="text" id="workTel"/>
			</td>
			<td>
				<label>Fax with Country & City Code:</label><br/>
				<input type="text" id="fax"/>
			</td>
		</tr>
		<tr>
			<td colspan='3'>
				<label>Mobile with Country & City Code:</label><br/>
				<input type="text" id="mobile"/>
			</td>
			<td>
				<label>Email 1:</label><br/>
				<input type="text" id="email1"/>
			</td>
			<td>
				<label>Email 2:</label><br/>
				<input type="text" id="email2"/>
			</td>
		</tr>
		<tr>
			<td colspan='3'>
				<label>Occupation:</label><br/>
				<input type="text" id="occuption"/>
			</td>
			<td colspan='2'>
				<label>Academic Institution / Company / Employer:</label><br/>
				<input type="text" id="academic"/>
			</td>
		</tr>
		<tr>
			<td colspan='5'>
				<label>Program Name:M.B.B.S / MD(Please select one of the programs)</label><br/>
				<input type="text" id="program"/>
			</td>
		</tr>
		<tr>
			<td colspan='5'>
				<label>Program Starting  Date</label><br/>
				<input type="text" id="programDate"/>
			</td>
		</tr>
		<tr>
			<td colspan='5' class="text-center">
				<h2><b>EDUCATIONAL QUALIFICATIONS</b></h2>
			</td>
		</tr>
		<tr>
			<td><label>From M-Y To M-Y</label></td>
			<td><label>Name of Institution / School</label></td>
			<td><label>Certificate Obtained</label></td>
			<td><label>Marks Obtained / Total Marks</label></td>
			<td><label>% age</label></td>
		</tr>
		<tr>
			<td><input type="text" style="width: 120px;" id="f1"/>&nbsp;&nbsp;&nbsp;<input type="text" style="width: 120px;" id="t1"/></td>
			<td><input type="text" id="name_school1"/></td>
			<td><input type="text" id="certificate1"/></td>
			<td><input type="text" id="marks1"/></td>
			<td><input type="text" id="age1"/></td>
		</tr>
		<tr>
			<td><input type="text" style="width: 120px;" id="f2"/>&nbsp;&nbsp;&nbsp;<input type="text" style="width: 120px;" id="t2"/></td>
			<td><input type="text" id="name_school2"/></td>
			<td><input type="text" id="certificate2"/></td>
			<td><input type="text" id="marks2"/></td>
			<td><input type="text" id="age2"/></td>
		</tr>
		<tr>
			<td colspan='5'>
				<label>What other languages have you studied?</label>
				<input type="text" id="languages2"/>
			</td>
		</tr>
		<tr>
			<td colspan='5'>
				<label>How did you hear about this program?  </label>
				<select id="hear">
					<option>Google</option>
				 	<option>Yahoo</option>
				 	<option>Brochure</option>
				 	<option>University</option>
				 	<option>Friend</option>
				 	<option>Family</option>
				 	<option>Newspaper</option>
				 	<option> Magazine</option>
				 	<option>Agent</option>
				 	<option>Other</option>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan='2'>
				<label>Accommodation (Please Circle One): </label>
				<select id="accommodation">
					<option>Dorm</option>
				 	<option> Student Flat </option>
				 	<option>Apartment </option>
				 	<option>Hotel </option>
				</select>
			</td>
			<td colspan='3'>
				<label>Please Circle One:   </label>
				<select id="circle">
					<option>Private </option>
				 	<option> Two Sharing </option>
				 	<option>3 Sharing (Apartment Only) </option>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan='2'>
				<label>Accommodation Starting Date (day before start of program): </label>
				<input type="text" id="startingDate"/>
			</td>
			<td colspan='3'>
				<label>Accommodation End Date(day after the last day of program): </label>
				<input type="text" id="endDate"/>
			</td>
		</tr>
		<tr>
			<td colspan='2'>
				<label>For Shared Accommodation .: </label><br/>
				<label> Do you smoke? </label>
				<select id="smoke">
					<option> Yes  </option>
	 				<option> No </option>
				</select><br/>
				<label>  Are you a vegetarian? </label>
				<select id="vegetarian">
					<option> Yes  </option>
	 				<option> No </option>
				</select>
			</td>
			<td colspan='3'>
				<label>Do you prefer to live in a smoke-free room? </label>
				<select id="room">
					<option> Yes  </option>
				 	<option> No </option>
				 	<option> Doesn't Matter </option>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan='5'>
				<label>Comments  (i.e. Joint Application - state name of joint applicant; other requests regarding accommodation or things MNUMS should know about): </label>
				<input type="text" id="comments"/>
			</td>
		</tr>
		<tr>
			<td colspan='3'>
				<label>Emergency Contact Person Name & Relationship  (i.e. Father/ Mother/ Guardian): </label><br/>
				<input type="text" id="emergency"/>
			</td>
			<td>
				<label>Home Tel with Country & City Code </label><br/>
				<input type="text" id="homeTel2"/>
			</td>
			<td>
				<label>Work Tel with Country & City Code </label><br/>
				<input type="text" id="workTel2"/>
			</td>
		</tr>
		<tr>
			<td colspan='3'>
				<label>Mobile with Country & City Code </label><br/>
				<input type="text" id="mobileCountry"/>
			</td>
			<td colspan='2'>
				<label>Fax with Country & City Code </label><br/>
				<input type="text" id="faxCountry"/>
			</td>
		</tr>
		<tr>
			<td colspan='5'>
				<label>Email: </label>
				<input type="text" id="email"/>
			</td>
		</tr>
		<tr>
			<td colspan='5'>
				<label>Address:</label>
				<input type="text" id="address2"/>
			</td>
		</tr>
		<tr>
			<td colspan='5'>
				 <p>I declare that:  </p>
				 1. The above information provided and documents given in support of my Application are complete, true and correct.  <br/>
				 2. I agree to abide by the laws of Mongolia and agree not to engage in any illegal, political and religious activities during my academic pursuit in Mongolia. <br/>
				 3. I have read and I accept MNUMS's Programs Terms and Conditions.  <br/>
				 4. I agree to observe and accept all Rules, Regulations and Conditions of the all host schools / institutes / organizations and its cooperating partners. <br/>
				 5. I have read and I accept the terms and conditions for the insurance and medical membership provided in Mongolia. <br/>
				<p>&nbsp;</p>
				<label>Signature of Applicant:</label>
				<input type="text" id="app"/>
				<label>Date:</label>
				<input type="text" id="dates"/><br/>
				<label>Signature of Parent /Guardian: </label>
				<input type="text" id="app2"/>
				<label> Date:</label>
				<input type="text" id="dates2"/>
			</td>
		</tr>
	</table>
			<div id="inputFile">
			<input type="file" multiple=true name="upload">
			<!-- <input type="file" multiple=true name="upload">
			<input type="file" multiple=true name="upload">
			<input type="file" multiple=true name="upload">
			<input type="file" multiple=true name="upload">
			<input type="file" multiple=true name="upload">
			<input type="file" multiple=true name="upload">
			<input type="file" multiple=true name="upload">
			<input type="file" multiple=true name="upload">
			<input type="file" multiple=true name="upload"> -->
			<div id="addUpload"></div>
			<label>You can Continue adding other attachments</label><br/>
			<label>Click the plus</label><br/>
			<a class="button button-caution button-circle button-jumbo" onclick="addFile()"><font size="7">+</font></a>
	<a class="css-3d-btn2" href="javascript:void(0);" onclick="submit()">SUBMIT</a>
	<input type="hidden" id="btnHidden" name="jsonBook" />
</form>