<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!--==================== form add category start ==========================-->
			<div class="container mrg-box card">
				<h5 class="center-align form-title card-header card-header-icon z-depth-3">
					<i class="material-icons">help</i>
				</h5>
				<div class="row card-content">
					<h4 class="card-title">Add Objective Questions</h4>
					<form name="" action="AddQuestionController" method="post" class="custom-form col l12 m12 s12">
						<!--=========== Select Category start ================-->
						<div class="row">
					        <div class="input-field col l10 push-l1 m11 push-m1 s12">
					          		<select name="QuestionCategoryId">
							      	<option  disabled selected >Select</option>
							      	<c:forEach items="${categorylistOnQuestion}" var="categorylistOnQuestion">
							      	<option value="${categorylistOnQuestion.questionCategoryId}">${categorylistOnQuestion.questionCategory}</option>
							      	
							      	</c:forEach>
							      	
							      	
							    </select>
							    <label for="category">Choose Category</label>
					        </div>
					    </div>
					    <!--=========== Select Category end ================-->
						<!--======================== Question start here =========================-->
						<div class="row">
						    <div class="input-field col l10 push-l1 m11 push-m1 s12">
					          	<textarea id="add_question" class="materialize-textarea" placeholder="Enter Question" name="Question"></textarea>
					          	<label for="add_question" class="active">Question</label>
							</div>
						</div>
						<!--======================== Question End here =========================-->

						<!--======================== Option start here =========================-->
						<div class="row">
							<!--=========== Option 1 start ================-->
						    <div class="input-field col l5 push-l1 m11 push-m1 s12">
					          	<input placeholder="Enter Option 1" id="option1" type="text" name="option1">
					          	<label for="option1" class="active">Option 1</label>
							</div>
							<!--=========== Option 1 end ================-->
							<!--=========== Option 2 start ================-->
							<div class="input-field col l5 push-l1 m11 push-m1 s12">
					          	<input placeholder="Enter Option 2" id="option2" type="text" name="option2">
					          	<label for="option2" class="active">Option 2</label>
							</div>
							<!--=========== Option 2 end ================-->
						</div>
						<div class="row">
							<!--=========== Option 3 start ================-->
						    <div class="input-field col l5 push-l1 m11 push-m1 s12">
					          	<input placeholder="Enter Option 3" id="option3" type="text" name="option3">
					          	<label for="option3" class="active">Option 3</label>
							</div>
							<!--=========== Option 3 end ================-->
							<!--=========== Option 4 start ================-->
							<div class="input-field col l5 push-l1 m11 push-m1 s12">
					          	<input placeholder="Enter Option 4" id="option4" type="text" name="option4">
					          	<label for="option4" class="active">Option 4</label>
							</div>
							<!--=========== Option 4 end ================-->
						</div>
						<!--======================== Option end here =========================-->
						<!--=========== Correct answer start ================-->
						<div class="row">
					        <div class="input-field col l10 push-l1 m11 push-m1 s12">
					          	<select name="rightOption">
							      	<option value="rightOption" disabled selected>Choose correct answer</option>
							      	<option value="A" >Option 1</option>
							      	<option value="B" >Option 2</option>
							      	<option value="C" >Option 3</option>
							      	<option value="D" >Option 4</option>
							    </select>
							    <label for="correct_answer">Correct Answer</label>
					        </div>
					    </div>
					    <!--=========== Correct answer end ================-->
					    <div class="row center-align">
						    <button class="btn waves-effect waves-light red darken-4" type="submit" name="action">Submit<i class="material-icons right">send</i>
							</button>
						</div>
					</form>
				</div>
			</div>
			<!--==================== form add category end ==========================-->
		</div>
