<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    

<section class="content-main">
    <s:form action="${pageContext.request.contextPath}/admin/product/add" method="POST" modelAttribute="product">
        <div class="row">
            <div class="col-12">
                <div class="content-header">
                    <h2 class="content-title">Add New Product</h2>
                    <div>
                        <button class="btn btn-md rounded font-sm hover-up">Publish</button>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="card mb-4">
                    <div class="card-header">
                        <h4>Basic</h4>
                    </div>
                    <div class="card-body">
                        <div class="mb-4">
                            <label for="product_name" class="form-label">Product Name</label>
                            <s:input path="productName" placeholder="Type here" class="form-control" id="productName"/>
                        </div>
                        <div class="mb-4">
                            <label class="form-label">Full description</label>
                            <s:textarea path="description" placeholder="Type here" class="form-control" rows="4"></s:textarea>
                        </div>
                        <div class="row mb-4">
                            <div class="col-lg-6">
                                <label class="form-label">Brands</label>
                                <s:select items="${brands}" class="form-select" itemLabel="brandName" itemValue="brandId" path="productBrand.brandId">
                                </s:select>
                            </div>
                            <div class="col-lg-6">
                                <label class="form-label">Categories</label>
                                <s:select items="${categories}" class="form-select" itemLabel="categoryName" itemValue="categoryId" path="category.categoryId">
                                </s:select>
                            </div>
                        </div>
                        <div class="mb-4">
                            <label class="form-label">Price</label>
                            <s:input path="price" placeholder="$" class="form-control"/>
                        </div>
                    </div>
                </div>
                <div class="card mb-4">
                	<div class="card-header">
                        <h4>Media</h4>
                    </div>
                    <div class="container-fluid">
					  <div class="row justify-content-center">
					    <div class="col-md-12 col-lg-12 mb-4 mt-4">
					      <div class="bg-light p-3 d-flex justify-content-center  border border-success" >
					      	<div id="main-image" class="align-items-center" style="height: 350px; width: 350px; background-color: #ccc"></div>
					      </div>
					    </div>
					    <div class="col-md-12">
					      <div class="row">
					        <div class="col-4 mb-4">
					          <div class="bg-light p-4 d-flex align-items-cente">
					          	<div class="sub-image d-flex align-items-center border border-success" style="height: 200px; width: 100%; background-color: #ccc"></div>
					          </div>
					        </div>
					        <div class="col-4 mb-4">
					          <div class="bg-light p-4 d-flex align-items-center">
					          	<div class="sub-image d-flex align-items-center  border border-success" style="height: 200px; width: 100%; background-color: #ccc"></div>
					          </div>
					        </div>
					        <div class="col-4 mb-4">
					          <div class="bg-light p-4 d-flex align-items-center">
					          	<div class="sub-image d-flex align-items-center  border border-success" style="height: 200px; width: 100%; background-color: #ccc"></div>
					          </div>
					        </div>
					      </div>
					    </div>
					  </div>
					</div>
					<div class="row mb-4">
					  <div class="col-md-12 px-5">
						  <div class="input-group">
						    <input type="file" class="form-control" id="image-inputs" accept="image/*" onchange="getImagePreview(event)" multiple="multiple">
						  </div>
					  </div>
					</div>
                </div>
                <!-- card end// -->
            </div>
            <div class="col-lg-6">
                <!-- card end// -->
                <div class="card mb-4">
                    <div class="card mb-4">
                        <div class="card-header">
                            <h4>Variants</h4>
                        </div>
                        <div class="card-body" id="product-variants">
                            <c:forEach items="${product.productVariants}" var="productVariant" varStatus="status">
					            <div class="row product-variant">
					                <div class="col-lg-4">
					                    <div class="mb-4">
					                        <label for="product_name" class="form-label">Size</label>
					                        <s:select items="${sizes}" class="form-select" itemLabel="sizeName" itemValue="sizeId" path="productVariants[${status.index}].productSize.sizeId"/>
					                    </div>
					                </div>
					                <div class="col-lg-4">
					                    <div class="mb-4">
					                        <label for="product_name" class="form-label">Color</label>
					                        <s:input placeholder="Color" class="form-control" path="productVariants[${status.index}].color"/>
					                    </div>
					                </div>
					                <div class="col-lg-4">
					                    <div class="mb-4">
					                        <label for="product_name" class="form-label">Quantity</label>
					                        <s:input placeholder="Quantity" class="form-control" path="productVariants[${status.index}].quantity"/>
					                    </div>
					                </div>
					            </div>
					        </c:forEach>
                            <a class="btn btn-sm font-sm rounded btn-brand" onclick="addProductVariant()">Add a Variant</a>
                            <a class="btn btn-sm font-sm rounded btn-danger" onclick="removeProductVariant()">Remove last Variant</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </s:form>
    <script type="text/javascript">
    function getImagePreview(event) {
    	var uploadedFiles = event.target.files;
    	if(uploadedFiles.length >= 4) {
    		event.preventDefault();
    		alert("You are not allowed to upload more than 3 images")
    	} else {
	    	var mainImage = document.getElementById("main-image");
	    	var subImages = document.getElementsByClassName("sub-image");
	    	for(i = 0; i < subImages.length; i++){
	    		if(subImages[i].firstChild){
	    			var img = subImages[i].querySelector("img");
			    	img.src = URL.createObjectURL(uploadedFiles[i]);
	    		} else {
			    	var newImg = document.createElement("img");
			    	newImg.src = URL.createObjectURL(uploadedFiles[i]);
		    		subImages[i].appendChild(newImg);
	    		}
	    		
	    		subImages[i].addEventListener("click", (event) => {
			    	if(mainImage.firstChild){
						mainImage.firstChild.src = event.target.src
			    	} else {
						mainImage.append(event.target.cloneNode(true));
			    	}
	    		})
	    	}
    		
    	}
    }
    
    function addProductVariant() {
        // Find the last product variant element and clone it
        var lastVariant = $(".product-variant:last");
        var newVariant = lastVariant.clone();

        // Update the index of the new variant in the form
        var variantIndex = lastVariant.index() + 1;
        newVariant.find("select, input").each(function() {
            var inputName = $(this).attr("name");
            var newInputName = inputName.replace(/\[(\d+)\]/, "[" + variantIndex + "]");
            $(this).attr("name", newInputName);
        });

        // Add the new variant to the form
        lastVariant.after(newVariant);
    }

    function removeProductVariant() {
        // Find all product variant elements
        var variants = $(".product-variant");

        // Check if there is only one variant, in which case we cannot remove it
        if (variants.length <= 1) {
            alert("You cannot remove the last product variant.");
            return;
        }

        // Remove the last variant from the form
        var lastVariant = variants.last();
        lastVariant.remove();
    }
    </script>
</section>
<!-- content-main end// -->

