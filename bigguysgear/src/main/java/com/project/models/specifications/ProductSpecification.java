package com.project.models.specifications;

import java.util.Date;

import javax.persistence.criteria.Join;
import javax.persistence.criteria.JoinType;
import javax.persistence.criteria.Root;
import javax.persistence.criteria.Subquery;

import org.springframework.data.jpa.domain.Specification;

import com.project.models.Product;
import com.project.models.ProductVariant;

public class ProductSpecification {

    public static Specification<Product> hasCategory(Integer categoryId) {
        return (root, query, cb) -> cb.equal(root.get("category").get("categoryId"), categoryId);
    }
    
    public static Specification<Product> isInStock() {
    	return (root, query, cb) -> {
            // join on the productVariants field
            Join<Product, ProductVariant> productVariantJoin = root.join("productVariants", JoinType.LEFT);
            // create a subquery to get the sum of the quantity in all product variants
            Subquery<Integer> subquery = query.subquery(Integer.class);
            Root<ProductVariant> productVariantRoot = subquery.from(ProductVariant.class);
            subquery.select(cb.sum(productVariantRoot.get("quantity")))
                    .where(cb.equal(productVariantRoot.get("product"), root));
            query.distinct(true);
            // return a predicate that checks if the sum of quantity is greater than 0
            return cb.greaterThan(subquery, 0);
        };
    }
    
    public static Specification<Product> isOutOfStock() {
    	return (root, query, cb) -> {
            // join on the productVariants field
            Join<Product, ProductVariant> productVariantJoin = root.join("productVariants", JoinType.LEFT);
            // create a subquery to get the sum of the quantity in all product variants
            Subquery<Integer> subquery = query.subquery(Integer.class);
            Root<ProductVariant> productVariantRoot = subquery.from(ProductVariant.class);
            subquery.select(cb.sum(productVariantRoot.get("quantity")))
                    .where(cb.equal(productVariantRoot.get("product"), root));
            query.distinct(true);
            // return a predicate that checks if the sum of quantity is greater than 0
            return cb.equal(subquery, 0);
        };
    }
    
    public static Specification<Product> publishedBefore(Date publishDate) {
        return (root, query, cb) -> cb.lessThanOrEqualTo(root.get("createdAt"), publishDate);
    }
}