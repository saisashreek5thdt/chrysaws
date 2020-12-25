package com.chrysaellect.meet.serviceImpl;

import com.chrysaellect.meet.dto.ordersDTO;
import com.chrysaellect.meet.dto.resourcefilesDTO;
import com.chrysaellect.meet.model.cart;
import com.chrysaellect.meet.model.orders;
import com.chrysaellect.meet.model.resourcefiles;
import com.chrysaellect.meet.repository.ordersRepository;
import com.chrysaellect.meet.service.ordersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class ordersServiceImpl implements ordersService {
    @Autowired
    private ordersRepository ordersRepository;
    @Override
    public List<ordersDTO> getAllorders() {
        List<orders> list = ordersRepository.findAll();
        List<ordersDTO> ordersList = list.stream()
                .map(ordersDTO::new)
                .collect(Collectors.toCollection(ArrayList::new));

        return ordersList;
    }

    @Override
    public void createOrder(String productName[], String type[], String category[], String[] image, String user, String[] fee, String orderId, String date) {
      //  orders or=convertDtoToModel(productName,type,category,image,user,fee,orderId,date);
        for(int i=0; i<productName.length; i++){

            orders or=convertDtoToModel(productName[i],type[i],category[i],image[i],user,fee[i],orderId,date);
            ordersRepository.save(or);
        }

    }

    private orders convertDtoToModel(String productName, String type, String category, String image, String user, String fee, String orderId, String date){
        orders or=new orders();
        int amount = Integer.parseInt(fee);
        int gst=(amount*8)/100;
        int total=amount+gst;
        String tot=String.valueOf(total);
     or.setProductName(productName);
     or.setType(type);
     or.setCategory(category);
     or.setImage(image);
     or.setUser(user);
     or.setFee(fee);
     or.setOrderId(orderId);
     or.setDate(date);
     or.setTotal(tot);
     or.setStatus("1");
        return or;
    }
}

