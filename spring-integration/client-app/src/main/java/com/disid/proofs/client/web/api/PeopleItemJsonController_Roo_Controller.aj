// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.disid.proofs.client.web.api;

import com.disid.proofs.client.service.api.PersonService;
import com.disid.proofs.client.web.api.PeopleItemJsonController;

privileged aspect PeopleItemJsonController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private PersonService PeopleItemJsonController.personService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return PersonService
     */
    public PersonService PeopleItemJsonController.getPersonService() {
        return personService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param personService
     */
    public void PeopleItemJsonController.setPersonService(PersonService personService) {
        this.personService = personService;
    }
    
}
