package com.chrysaellect.meet.service;

import com.chrysaellect.meet.dto.cartDTO;
import com.chrysaellect.meet.dto.courseDTO;
import com.chrysaellect.meet.model.cart;
import com.chrysaellect.meet.model.user;
import com.chrysaellect.meet.model.userCourses;

import java.util.List;

public interface cartService {
    public List<cartDTO> getAllcarts();
    public void createCart(String course,String type, String image, String user,String fee,String category);
    public void deleteitem(Long id);
    public void makePurchased(String[]  cartId);
    public void makeChecked(Long  cartId);
    public void makeChecked2(Long  cartId);
}
