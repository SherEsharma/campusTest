<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--========================== sidebar end ================================-->


<!--==================== form add category start ==========================-->

<div class="container mrg-box card">
	<h5
		class="center-align form-title card-header card-header-icon z-depth-3">
		<i class="material-icons">library_add</i>
	</h5>
	<div class="row card-content">
		<h4 class="card-title">Add category</h4>
		<form:form name="" action="addcategory" method="post"
			modelAttribute="category" class="custom-form col l12 m12 s12">
			<div class="row">
				<div class="input-field col l10 push-l1 m11 push-m1 s12">
					<form:input path="categoryName" placeholder="Enter Category Name"
						id="add_category" type="text" name="questioncategoryname" />
					<label for="add_category">Category Name</label>

				</div>
			</div>
			<div class="row">
				<p class=" center-align">
					<form:radiobutton path="categoryType" class="with-gap"
						name="group1" id="test1" value="1" />
					<label for="test1">Objective</label>
					<form:radiobutton path="categoryType" class="with-gap"
						name="group1" id="test2" value="2" />
					<label for="test2">subjective</label>
				</p>
			</div>
			<div class="row center-align">
				<button class="btn waves-effect waves-light red darken-4"
					type="submit" name="action">
					Submit<i class="material-icons right">send</i>
				</button>
			</div>
		</form:form>

	</div>
</div>
<!--==================== form add category end ==========================-->

<%-- ${viewAllCategory} --%>
<!--==================== Category list table start  ==========================-->
<div class="row container table-box card">
	<h5
		class="center-align form-title card-header card-header-icon z-depth-3">
		<i class="material-icons">format_list_bulleted</i>
	</h5>
	<div class="row card-content">
		<h4 class="card-title">List Of Categories</h4>
		<table id="example" class="table bordered striped" cellspacing="0"
			width="100%">
			<thead class="">
				<tr>
					<th>Category Id</th>
					<th>Category Name</th>
					<th>CategoryType</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${viewAllCategory}" var="viewAllCategory">
					<tr>

						<td>${viewAllCategory.categoryId}</td>
						<td>${viewAllCategory.categoryName}</td>
						<c:choose>
						<c:when test="${viewAllCategory.categoryType==(1)}">
						
						<td>Objective</td>
						</c:when>
						<c:otherwise><td>Subjective</td></c:otherwise>
						</c:choose>
						
						

						<%-- <td><a
							href="EditCategoryController?action=edit&userId=<c:out value="${viewAllCategory.categoryId}"/>&&questionCategory=<c:out value="${viewAllCategory.categoryName}"/>">Update</a></td>
						<td><a
							href="UserController?action=delete&userId=<c:out value="${viewAllCategory.categoryId}"/>">Delete</a></td> --%>
						<td><a
							href="EditCategoryController?action=edit&userId=<c:out value="${viewAllCategory.categoryId}"/>&&questionCategory=<c:out value="${viewAllCategory.categoryName}"/>"
							class="tooltipped btn btn-icon edit" data-position="top"
							data-delay="50" data-tooltip="Edit"> <i
								class="material-icons">border_color</i>
						</a>
							<button class="tooltipped btn btn-icon edit" data-position="top"
								data-delay="50" data-tooltip="Delete">
								<i class="material-icons">delete</i>
							</button></td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
</div>
<!--==================== Category list table end ==========================-->
</div>
