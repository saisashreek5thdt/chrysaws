package com.chrysaellect.meet.service;

import com.chrysaellect.meet.dto.ordersDTO;
import com.chrysaellect.meet.dto.resourcefilesDTO;

import java.util.List;

public interface ordersService {
    public List<ordersDTO> getAllorders();
    public void createOrder(String[] productName,String[] type, String[] category,String[] image, String user,String[] fee,String orderId,String date);
}
