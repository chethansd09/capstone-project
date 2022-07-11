package eshop.homedecor.shopapi.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import eshop.homedecor.shopapi.entity.Discount;

@Repository
public interface DiscountRepository extends JpaRepository<Discount, String> {

}
