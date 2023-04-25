<%@page import="com.project.service.ProductService"%>
<%@page import="com.project.models.ProductVariant"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<script src="${pageContext.request.contextPath}/resources/admin/assets/js/vendors/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

<script>
	$(function() {
		$("#publishDate").datepicker(
			{
				format: 'dd/mm/yyyy'
			}
		);
	});
</script>
<script>
   	function categoryOnload(){
        var url = window.location.href;
   		var categoryIndex = url.indexOf("category=") + 11;
        var currentCategoryId= parseInt(url.substring(categoryIndex));
              
   		document.getElementById("category").value = currentCategoryId;
   	}
   	
   	function categorySelected() {
   		var categoryId = document.getElementById("category").value;
   		  var urlParams = new URLSearchParams(window.location.search);
   		  if(categoryId == "") {
   			  urlParams.delete("categoryId");
   		  } else {
    		  urlParams.set("categoryId", categoryId);
   		  }
   		  urlParams.set("page", "1");
   		  var newUrl = window.location.pathname + "?" + urlParams.toString();
   		  window.location.href = newUrl;
      }
   	
   	function statusSelected() {
   		var status = document.getElementById("status").value;
   		  var urlParams = new URLSearchParams(window.location.search);
   		  if(status == "") {
   			  urlParams.delete("status");
   		  } else {
    		  urlParams.set("status", status);
   		  }
   		  urlParams.set("page", "1");
   		  var newUrl = window.location.pathname + "?" + urlParams.toString();
   		  window.location.href = newUrl;
      }
   	
   	function dateSelected() {
   		  var publishDateBefore = document.getElementById("publishDate").value;
   		  if (publishDateBefore) {
   		    // Parse the date string to a Date object
   		    var parsedDate = new Date(publishDateBefore);
   		    // Format the date as dd-MM-yyyy
   		    var formattedDate = ('0' + parsedDate.getDate()).slice(-2) + '-' + ('0' + (parsedDate.getMonth() + 1)).slice(-2) + '-' + parsedDate.getFullYear();
   		    var urlParams = new URLSearchParams(window.location.search);
   		    urlParams.set("publishDateBefore", formattedDate);
   		    urlParams.set("page", "1");
   		    var newUrl = window.location.pathname + "?" + urlParams.toString();
   		    window.location.href = newUrl;
   		  } else {
   		    // If no date is selected, remove the "date" parameter from the query string
   		    var urlParams = new URLSearchParams(window.location.search);
   		    urlParams.delete("publishDateBefore");
   		    urlParams.set("page", "1");
   		    var newUrl = window.location.pathname + "?" + urlParams.toString();
   		    window.location.href = newUrl;
   		  }
   		}
</script>
<section class="content-main">
    <div class="content-header">
        <div>
            <h2 class="content-title card-title">Products List</h2>
        </div>
        <div>
            <a href="/admin/product/add" class="btn btn-primary btn-sm rounded">Create new</a>
        </div>
    </div>
    <div class="card mb-4">
    	
        <header class="card-header">
            <div class="row align-items-center">
                <div class="col-md-3 col-12 me-auto mb-md-0 mb-3">
                    <select id="category" class="form-select" onchange="categorySelected()"> 
                    	<c:set var="categoryId" value="${param.categoryId}"/>
						  <option value="" selected>Categories</option>
						  <c:forEach items="${categories}" var="category">
						    <option value="${category.categoryId}" <c:if test="${categoryId == category.categoryId}">selected</c:if>>
						    	${category.categoryName}
						    </option>
						  </c:forEach>
					</select>
                </div>
                <div class="col-md-2 col-6">
  					<input type="date" id="publishDate" class="form-control" onchange="dateSelected()">
                </div>
                <div class="col-md-2 col-6">
                    <select id="status" class="form-select" onchange="statusSelected()">
                        <option value="" selected>Status</option>
                        <option value="in_stock" <c:if test='${param.status == "in_stock"}'>selected</c:if>>In stock</option>
                        <option value="out_of_stock" <c:if test='${param.status == "out_of_stock"}'>selected</c:if>>Out of stock</option>
                    </select>
                </div>
            </div>
            <hr>
            <article class="itemlist">
                <div class="row align-items-center">
                    <div class="col-lg-4 col-sm-4 col-8 flex-grow-1 col-name">
                    	<div class="col-lg-4 col-sm-4 col-8 flex-grow-1 col-name">
                        <a class="itemside" href="#">
                            <div class="left">
                            	<h6 class="mb-0">Image</h6>
                            </div>
                            <div class="info pl-25">
                            	<h6 class="mb-0">Name</h6>
                            </div>
                        </a>
                    </div>
                    </div>
                    <div class="col-lg-2 col-sm-2 col-4 col-price"> <h6>Price</h6> </div>
                    <div class="col-lg-2 col-sm-2 col-4 col-status">
                        <h6 >Status</h6>
                    </div>
                    <div class="col-lg-1 col-sm-2 col-4 col-date ps-1">
                        <h6>Publish Date</h6>
                    </div>
                    <div class="col-lg-2 col-sm-2 col-4 col-action text-end">
                         <h6>Actions</h6>
                    </div>
                </div> <!-- row .// -->
            </article> <!-- itemlist  .// -->
        </header> <!-- card-header end// -->
        
        <div class="card-body">
        <c:forEach var="product" items="${products }">
       		<article class="itemlist">
               <div class="row align-items-center">
                   <div class="col-lg-4 col-sm-4 col-8 flex-grow-1 col-name">
                       <a class="itemside" href="/admin/product/edit/${product.productId }">
                           <div class="left">
                        		<img src="${pageContext.request.contextPath }/upload/img/product/${product.productImages.get(0).imageName}" class="img-sm img-thumbnail" alt="Item">
                           </div>
                           <div class="info">
                               <h6 class="mb-0">${product.productName }</h6>
                           </div>
                       </a>
                   </div>
                   <div class="col-lg-2 col-sm-2 col-4 col-price"> <span>$${product.price }</span> </div>
                   <c:set var="productNumber" value="0"/>
					<c:forEach var="proVar" items="${product.productVariants}">
					    <c:set var="quantity" value="${proVar.quantity}"/>
					    <c:set var="productNumber" value="${Integer.parseInt(productNumber) + quantity}"/>
					</c:forEach>
                   <div class="col-lg-2 col-sm-2 col-4 col-status">
                   		<c:if test="${productNumber > 0 }">
	                       <span class="badge rounded-pill alert-success">In stock</span>               		
                   		</c:if>
                   		<c:if test="${productNumber == 0 }">
                   			<span class="badge rounded-pill alert-warning">Out of stock</span>               		
                   		</c:if>
                   </div>
                   <div class="col-lg-1 col-sm-2 col-4 col-date">
                       <span>
                       		<fmt:formatDate value="${product.createdAt}" pattern="dd/MM/yyyy" />
                       </span>
                   </div>
                   <div class="col-lg-2 col-sm-2 col-4 col-action text-end">
                       <a href="/admin/product/edit/${product.productId }" class="btn btn-sm font-sm rounded btn-brand">
                           Edit
                       </a>
                       <a href="/admin/product/delete/${product.productId }" class="btn btn-sm font-sm btn-light rounded">
                           Delete
                       </a>
                   </div>
               </div> <!-- row .// -->
           </article> <!-- itemlist  .// -->
        </c:forEach>
        </div> <!-- card-body end// -->
    </div> <!-- card end// -->
    <div class="pagination-area mt-30 mb-50">
        <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-start">
            	<%
				    int pageMax = (int) request.getAttribute("pageMax");
				    int currentPage = Integer.parseInt(request.getParameter("page"));
				    String categoryQueryString = "";
				    if(request.getParameter("categoryId") != null) {
				        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
				        categoryQueryString = "&categoryId=" + categoryId;
				    }
				    for (int i = 1; i <= pageMax; i++) {
				%>
				    <li class="page-item <%= i == currentPage ? "active" : "" %>">
				        <a class="page-link" href="<%= "?page=" + i + categoryQueryString %>"><%= i %></a>
				    </li>
				<%
				    }
				%>
            </ul>
        </nav>
    </div>
</section> <!-- content-main end// -->
