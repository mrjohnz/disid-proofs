// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.relatedreadonly.repository;

import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.roo.relatedreadonly.domain.City;
import org.springframework.roo.relatedreadonly.domain.QCity;
import org.springframework.roo.relatedreadonly.repository.CityRepositoryCustom;
import org.springframework.roo.relatedreadonly.repository.CityRepositoryImpl;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CityRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare parents: CityRepositoryImpl implements CityRepositoryCustom;
    
    declare @type: CityRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CityRepositoryImpl.NAME = "name";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CityRepositoryImpl.POSTAL_CODE = "postalCode";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<City> CityRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QCity city = QCity.city;
        
        JPQLQuery<City> query = from(city);
        
        Path<?>[] paths = new Path<?>[] {city.name,city.postalCode};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(NAME, city.name)
			.map(POSTAL_CODE, city.postalCode);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, city);
    }
    
}
