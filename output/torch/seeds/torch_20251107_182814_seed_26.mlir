"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_i32, !torch_vtensor_f32) -> (!torch_vtensor_f32, !torch_vtensor_i32), sym_name = "complex_operations"}> ({
  ^bb0(%arg0: !torch_vtensor_i32, %arg1: !torch_vtensor_f32):
    %0 = "torch.constant.int"() <{value = 1024 : i64}> : () -> !torch_int
    %1 = "torch.constant.float"() <{value = 3.14159 : f32}> : () -> !torch_float
    %2 = "arith.addi"(%arg0, %0) : (!torch_vtensor_i32, !torch_int) -> !torch_vtensor_i32
    %3 = "arith.muli"(%arg0, %0) : (!torch_vtensor_i32, !torch_int) -> !torch_vtensor_i32
    %4 = "arith.fdivf"(%arg1, %1) : (!torch_vtensor_f32, !torch_float) -> !torch_vtensor_f32
    %5 = "arith.subf"(%arg1, %1) : (!torch_vtensor_f32, !torch_float) -> !torch_vtensor_f32
    %6 = "func.return"(%4, %3) : (!torch_vtensor_f32, !torch_vtensor_i32) -> ()
  }) : () -> ()
}) : () -> ()