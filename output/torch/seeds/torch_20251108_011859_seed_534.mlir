"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_i32_1x1024, !torch_vtensor_i32_1x1024) -> !torch_vtensor_i32_1x1024, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: !torch_vtensor_i32_1x1024, %arg1: !torch_vtensor_i32_1x1024):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_i32_1x1024, !torch_vtensor_i32_1x1024) -> !torch_vtensor_i32_1x1024
    %1 = "torch.aten.slice.Tensor"(%0, %c0_i64, %c512_i64, %c512_i64) : (!torch_vtensor_i32_1x1024, i64, i64, i64) -> !torch_vtensor_i32_1x512
    %2 = "torch.aten.view"(%1, %shape_i32_1x256x2) : (!torch_vtensor_i32_1x512, !torch_int_arrayref_i32_1x256x2) -> !torch_vtensor_i32_1x256x2
    %3 = "torch.aten.eq.Tensor"(%2, %c1_i64) : (!torch_vtensor_i32_1x256x2, i64) -> !torch_vtensor_i1_1x256x2
    "func.return"(%3) : (!torch_vtensor_i1_1x256x2) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> !torch_vtensor_i32_1x1024, sym_name = "initialize_tensor"}> ({
  ^bb0:
    %0 = "torch.constant.none"() : () -> !torch_none
    %1 = "torch.constant.int"() <{value = 123 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 1024 : i64}> : () -> !torch_int
    %3 = "torch.prim.NumToTensor.Scalar"(%1) : (i64) -> !torch_tensor_i32
    %4 = "torch.prim.NumToTensor.Scalar"(%2) : (i64) -> !torch_tensor_i32
    %5 = "torch.constant.int_arrayref_i32_1x1024"() <{value = [1, 1024]}> : () -> !torch_int_arrayref_i32_1x1024
    %6 = "torch.aten.full"(%5, %3, %4) : (!torch_int_arrayref_i32_1x1024, !torch_tensor_i32, !torch_tensor_i32) -> !torch_vtensor_i32_1x1024
    "func.return"(%6) : (!torch_vtensor_i32_1x1024) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> !torch_vtensor_i32_1x1024, sym_name = "initialize_tensor_2"}> ({
  ^bb0:
    %0 = "torch.constant.none"() : () -> !torch_none
    %1 = "torch.constant.int"() <{value = 456 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 1024 : i64}> : () -> !torch_int
    %3 = "torch.prim.NumToTensor.Scalar"(%1) : (i64) -> !torch_tensor_i32
    %4 = "torch.prim.NumToTensor.Scalar"(%2) : (i64) -> !torch_tensor_i32
    %5 = "torch.constant.int_arrayref_i32_1x1024"() <{value = [1, 1024]}> : () -> !torch_int_arrayref_i32_1x1024
    %6 = "torch.aten.full"(%5, %3, %4) : (!torch_int_arrayref_i32_1x1024, !torch_tensor_i32, !torch_tensor_i32) -> !torch_vtensor_i32_1x1024
    "func.return"(%6) : (!torch_vtensor_i32_1x1024) -> ()
  }) : () -> ()
}) : () -> ()