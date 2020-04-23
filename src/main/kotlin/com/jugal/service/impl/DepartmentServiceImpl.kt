package com.jugal.service.impl

import com.jugal.data.Department
import com.jugal.repository.DepartmentRepository
import com.jugal.service.DepartmentService
import org.springframework.stereotype.Service

@Service
class DepartmentServiceImpl(
    private val departmentRepository: DepartmentRepository
) : DepartmentService {

    override fun getDepartmentByID(deptID: Int): Department =
        departmentRepository.findByDepartmentID(deptID)

}
