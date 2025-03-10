package com.terragrouplabs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.terragrouplabs.entity.TerraService;
import com.terragrouplabs.repository.ServiceRepository;

@Service
public class ServiceService {

    @Autowired
    private ServiceRepository serviceRepository;
    
    /**
     * すべてのサービスを取得します
     * @return サービスのリスト
     */
    public List<TerraService> getAllServices() {
        return serviceRepository.findAll();
    }
    
    /**
     * IDによりサービスを取得します
     * @param id サービスID
     * @return 見つかったサービス、またはnull
     */
    public TerraService getServiceById(Long id) {
        return serviceRepository.findById(id).orElse(null);
    }
}