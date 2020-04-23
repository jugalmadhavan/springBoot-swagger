package com.jugal.controller.apiDoc

import com.jugal.data.Department
import io.swagger.annotations.Api
import io.swagger.annotations.ApiOperation
import io.swagger.annotations.ApiResponses
import io.swagger.annotations.ApiResponse
import io.swagger.annotations.ApiParam

@Api(value = "department", description = "the department API")
interface DepartmentApis {

    @ApiOperation(
        value = "",
        nickname = "getDepartmentByID",
        notes = "Get department fields by department ID"
    )
    @ApiResponses(
        ApiResponse(code = 200, message = "Success"),
        ApiResponse(code = 400, message = "Invalid API call")
    )
    fun getDepartmentByID(
        @ApiParam(
            value = "Enter department ID to fetch department fields",
            required = true
        ) deptID: Int
    ): Department
}