"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_0, !torch_vtensor_1) -> !torch_vtensor_2, sym_name = "complex_torch_operations"}> ({
    ^bb0(%arg0: !torch_vtensor_0, %arg1: !torch_vtensor_1):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_0, !torch_vtensor_1) -> !torch_vtensor_0
      %1 = "torch.aten.view"(%0, %attr_0) : (!torch_vtensor_0, !torch_i64_0) -> !torch_vtensor_3
      %2 = "torch.aten.slice.Tensor"(%1, %attr_1, %attr_2, %attr_3, %attr_4) : (!torch_vtensor_3, !torch_i64_0, !torch_i64_0, !torch_i64_0, !torch_i64_0) -> !torch_vtensor_3
      %3 = "torch.aten.index_select"(%2, %attr_5, %arg1) : (!torch_vtensor_3, !torch_i64_0, !torch_vtensor_1) -> !torch_vtensor_3
      %4 = "torch.aten.eq.Tensor"(%3, %arg0) : (!torch_vtensor_3, !torch_vtensor_0) -> !torch_vtensor_4
      %5 = "torch.prim.ListConstruct"(%4) : (!torch_vtensor_4) -> !torch_list_0
      "func.return"(%5) : (!torch_list_0) -> ()
  }) : () -> ()
}) : () -> ()

#attr_0 = #torch_i64_array_literal_value_0
#attr_1 = #torch_i64_attribute_value_1
#attr_2 = #torch_i64_attribute_value_2
#attr_3 = #torch_i64_attribute_value_3
#attr_4 = #torch_i64_attribute_value_4
#attr_5 = #torch_i64_attribute_value_5

#torch_vtensor_0 = tensor<4x4xf32>
#torch_vtensor_1 = tensor<4x1xf32>
#torch_vtensor_2 = tensor<4x4xf32>
#torch_vtensor_3 = tensor<2x2xf32>
#torch_vtensor_4 = tensor<2x2xi1>
#torch_i64_0 = tensor<2xi64>
#torch_list_0 = !torch_list(!torch_vtensor_4)

#torch_i64_array_literal_value_0 = [2, 2]
#torch_i64_attribute_value_1 = 0
#torch_i64_attribute_value_2 = 0
#torch_i64_attribute_value_3 = 2
#torch_i64_attribute_value_4 = 2
#torch_i64_attribute_value_5 = 1

#torch_i64_type = i64
#torch_f32_type = f32
#torch_i1_type = i1
#torch_list_type = !torch_list(!torch_i1_type) 

#torch_vtensor_0_type = tensor<4x4xf32>
#torch_vtensor_1_type = tensor<4x1xf32>
#torch_vtensor_2_type = tensor<4x4xf32>
#torch_vtensor_3_type = tensor<2x2xf32>
#torch_vtensor_4_type = tensor<2x2xi1>
#torch_i64_0_type = tensor<2xi64>
#torch_list_0_type = !torch_list(!torch_i1_type)

#torch_i64_array_literal_value_0_type = tensor<2xi64>
#torch_i64_attribute_value_1_type = i64
#torch_i64_attribute_value_2_type = i64
#torch_i64_attribute_value_3_type = i64
#torch_i64_attribute_value_4_type = i64
#torch_i64_attribute_value_5_type = i64

#torch_i64_type_type = !torch_i64
#torch_f32_type_type = !torch_f32
#torch_i1_type_type = !torch_i1
#torch_list_type_type = !torch_list(!torch_i1_type_type) 

#torch_vtensor_0_type_type = !torch_vtensor_0
#torch_vtensor_1_type_type = !torch_vtensor_1
#torch_vtensor_2_type_type = !torch_vtensor_2
#torch_vtensor_3_type_type = !torch_vtensor_3
#torch_vtensor_4_type_type = !torch_vtensor_4
#torch_i64_0_type_type = !torch_i64_0
#torch_list_0_type_type = !torch_list_0

#torch_i64_array_literal_value_0_type_type = !torch_i64_array_literal_value_0
#torch_i64_attribute_value_1_type_type = !torch_i64_attribute_value_1
#torch_i64_attribute_value_2_type_type = !torch_i64_attribute_value_2
#torch_i64_attribute_value_3_type_type = !torch_i64_attribute_value_3
#torch_i64_attribute_value_4_type_type = !torch_i64_attribute_value_4
#torch_i64_attribute_value_5_type_type = !torch_i64_attribute_value_5

#torch_i64_type_type_type = !torch_i64_type
#torch_f32_type_type_type = !torch_f32_type
#torch_i1_type_type_type = !torch_i1_type
#torch_list_type_type_type = !torch_list_type 

#torch_vtensor_0_type_type_type = !torch_vtensor_0_type
#torch_vtensor_1_type_type_type = !torch_vtensor_1_type
#torch_vtensor_2_type_type_type = !torch_vtensor_2_type
#torch_vtensor_3_type_type_type = !torch_vtensor_3_type
#torch_vtensor_4_type_type_type = !torch_vtensor_4_type
#torch_i64_0_type_type_type = !torch_i64_0_type
#torch_list_0_type_type_type = !torch_list_0_type

#torch_i64_array_literal_value_0_type_type_type = !torch_i64_array_literal_value_0_type
#torch_i64_attribute_value_1_type_type_type = !torch_i64_attribute_value_1_type
#torch_i64_attribute_value_2_type_type_type = !torch_i64_attribute_value_2_type
#torch_i64_attribute_value_3_type_type_type = !torch_i64_attribute_value_3_type
#torch_i64_attribute_value_4_type_type_type = !torch_i64_attribute_value_4_type
#torch_i64_attribute_value_5_type_type_type = !torch_i64_attribute_value_5_type

#torch_i64_type_type_type_type = !torch_i64_type_type
#torch_f32_type_type_type_type = !torch_f32_type_type
#torch_i1_type_type_type_type = !torch_i1_type_type
#torch_list_type_type_type_type = !torch_list_type_type 

#torch_vtensor_0_type_type_type_type = !torch_vtensor_0_type_type
#torch_vtensor_1_type_type_type_type = !torch_vtensor_1_type_type
#torch_vtensor_2_type_type_type_type = !torch_vtensor_2_type_type
#torch_vtensor_3_type_type_type_type = !torch_vtensor_3_type_type
#torch_vtensor_4_type_type_type_type = !torch_vtensor_4_type_type
#torch_i64_0_type_type_type_type = !torch_i64_0_type_type
#torch_list_0_type_type_type_type = !torch_list_0_type_type

#torch_i64_array_literal_value_0_type_type_type_type = !torch_i64_array_literal_value_0_type_type
#torch_i64_attribute_value_1_type_type_type_type = !torch_i64_attribute_value_1_type_type
#torch_i64_attribute_value_2_type_type_type_type = !torch_i64_attribute_value_2_type_type
#torch_i64_attribute_value_3_type_type_type_type = !torch_i64_attribute_value_3_type_type
#torch_i64_attribute_value_4_type_type_type_type = !torch_i64_attribute_value_4_type_type
#torch_i64_attribute_value_5_type_type_type_type = !torch_i64_attribute_value_5_type_type

#torch_i64_type_type_type_type_type = !torch_i64_type_type_type
#torch_f32_type_type_type_type_type = !torch_f32_type_type_type
#torch_i1_type_type_type_type_type = !torch_i1_type_type_type
#torch_list_type_type_type_type_type = !torch_list_type_type_type 

#torch_vtensor_0_type_type_type_type_type = !torch_vtensor_0_type_type_type
#torch_vtensor_1_type_type_type_type_type = !torch_vtensor_1_type_type_type
