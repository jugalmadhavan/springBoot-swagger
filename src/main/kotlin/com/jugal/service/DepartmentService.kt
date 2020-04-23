package com.jugal.service

import com.jugal.data.Department

interface DepartmentService {
    fun getDepartmentByID(deptID: Int): Department
}
