package com.chrysaellect.meet.serviceImpl;

import com.chrysaellect.meet.dto.cartDTO;
import com.chrysaellect.meet.dto.courseDTO;
import com.chrysaellect.meet.model.*;
import com.chrysaellect.meet.repository.cartRepository;
import com.chrysaellect.meet.service.cartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
@Service
public class cartServiceImpl implements cartService {
    @Autowired
    private com.chrysaellect.meet.repository.cartRepository cartRepository;
    @Override
    public List<cartDTO> getAllcarts() {
        List<cart> list = cartRepository.findAll();
        List<cartDTO> cartList = list.stream()
                .map(cartDTO::new)
                .collect(Collectors.toCollection(ArrayList::new));

        return cartList;
    }

    @Override
    public void createCart(String course, String type, String image, String user, String fee,String category) {
        cart ca=convertDtoToModel(course,type,image,user,fee,category);
        cartRepository.save(ca);
    }

    @Override
    public void deleteitem(Long id) {
        cartRepository.deleteById(id);
    }


    @Override
    public void makePurchased(String[] id) {
        for(String s : id) {
            if(s != null && s.length() > 0) {

                cart ca=cartRepository.findByid(Long.parseLong(s));
                ca.setStatus("1");
                cartRepository.save(ca);

            }
        }


    }

    @Override
    public void makeChecked(Long id) {
        cart ct=cartRepository.findByid(id);
     ct.setChecked("1");
        cartRepository.save(ct);
    }


    @Override
    public void makeChecked2(Long cartId) {
        cart ca=cartRepository.findByid(cartId);
        ca.setChecked("0");
        cartRepository.save(ca);
    }


    private cart convertDtoToModel(String course, String type, String image, String user, String fee,String category){
        cart ca=new cart();

     ca.setName(course);
     ca.setCategory(category);
     ca.setFee(fee);
     ca.setImage(image);
     ca.setStatus("0");
     ca.setType(type);
     ca.setUser(user);
     ca.setChecked("0");
        return ca;
    }
}


