"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_LITERAL_i32_123_i32_456_i32_789, !torch_vtensor_LITERAL_i32_789_i32_456_i32_123) -> !torch_vtensor_LITERAL_i32_123_i32_456_i32_789, sym_name = "torch.aten.add.Tensor$multidim"}> ({
  ^bb0(%arg0: !torch_vtensor_LITERAL_i32_123_i32_456_i32_789, %arg1: !torch_vtensor_LITERAL_i32_789_i32_456_i32_123):
    %c0_i32 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %c1_i32 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %shape0 = "torch.aten.size.int"(%arg0, %c0_i32) : (!torch_vtensor_LITERAL_i32_123_i32_456_i32_789, !torch_int) -> !torch_int
    %shape1 = "torch.aten.size.int"(%arg0, %c1_i32) : (!torch_vtensor_LITERAL_i32_123_i32_456_i32_789, !torch_int) -> !torch_int
    %0 = "torch.aten._shape_as_tensor"(%shape0) : (!torch_int) -> !torch_vtensor_LITERAL_i32_1
    %1 = "torch.aten._shape_as_tensor"(%shape1) : (!torch_int) -> !torch_vtensor_LITERAL_i32_1
    %2 = "torch.aten.cat"(%0, %1) : (!torch_vtensor_LITERAL_i32_1, !torch_vtensor_LITERAL_i32_1) -> !torch_vtensor_LITERAL_i32_2
    %3 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor_LITERAL_i32_123_i32_456_i32_789, !torch_vtensor_LITERAL_i32_789_i32_456_i32_123) -> !torch_vtensor_LITERAL_i1_123_456_789
    %4 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_LITERAL_i32_123_i32_456_i32_789, !torch_vtensor_LITERAL_i32_789_i32_456_i32_123) -> !torch_vtensor_LITERAL_i32_123_i32_456_i32_789
    "func.return"(%4) : (!torch_vtensor_LITERAL_i32_123_i32_456_i32_789) -> ()
  }) : () -> ()
}) : () -> ()