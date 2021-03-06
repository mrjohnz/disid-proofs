// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.disid.proofs.server.web.api;

import com.disid.proofs.server.domain.Tool;
import com.disid.proofs.server.service.api.ToolService;
import com.disid.proofs.server.web.api.ToolsItemJsonController;
import io.springlets.web.NotFoundException;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

privileged aspect ToolsItemJsonController_Roo_JSON {
    
    declare @type: ToolsItemJsonController: @RestController;
    
    declare @type: ToolsItemJsonController: @RequestMapping(value = "/api/tools/{tool}", name = "ToolsItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param toolService
     */
    @Autowired
    public ToolsItemJsonController.new(ToolService toolService) {
        this.toolService = toolService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Tool
     */
    @ModelAttribute
    public Tool ToolsItemJsonController.getTool(@PathVariable("tool") Long id) {
        Tool tool = toolService.findOne(id);
        if (tool == null) {
            throw new NotFoundException(String.format("Tool with identifier '%s' not found",id));
        }
        return tool;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param tool
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> ToolsItemJsonController.show(@ModelAttribute Tool tool) {
        return ResponseEntity.ok(tool);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param tool
     * @return UriComponents
     */
    public static UriComponents ToolsItemJsonController.showURI(Tool tool) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(ToolsItemJsonController.class).show(tool))
            .buildAndExpand(tool.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedTool
     * @param tool
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> ToolsItemJsonController.update(@ModelAttribute Tool storedTool, @Valid @RequestBody Tool tool, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        tool.setId(storedTool.getId());
        getToolService().save(tool);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param tool
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> ToolsItemJsonController.delete(@ModelAttribute Tool tool) {
        getToolService().delete(tool);
        return ResponseEntity.ok().build();
    }
    
}
