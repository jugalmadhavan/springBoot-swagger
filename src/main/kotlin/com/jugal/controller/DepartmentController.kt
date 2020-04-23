package com.jugal.controller

import com.jugal.data.Department
import com.jugal.service.DepartmentService
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestParam
import org.springframework.web.bind.annotation.RestController

@RestController
class DepartmentController(private val departmentService: DepartmentService) {

    @GetMapping("/department")
    fun getDepartmentByID(@RequestParam(value = "deptID") deptID: Int): Department {
        return departmentService.getDepartmentByID(deptID)
    }

}