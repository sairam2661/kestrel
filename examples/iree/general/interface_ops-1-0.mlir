"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "interface_workgroup_info"}> ({
    %0 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %1 = "hal.interface.workgroup.count"() <{dimension = 1 : index}> : () -> index
    %2 = "hal.interface.workgroup.size"() <{dimension = 2 : index}> : () -> index
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

