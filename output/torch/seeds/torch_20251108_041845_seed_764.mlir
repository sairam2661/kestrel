"builtin.module"() ({
  "func.func"() <{function_type = (!torch_tensor_1, !torch_tensor_2) -> (!torch_tensor_3), sym_name = "tensor_mul_and_add"}> ({
    ^bb0(%arg0: !torch_tensor_1, %arg1: !torch_tensor_2):
      %0 = "torch.aten.mul.Tensor"(%arg0, %arg1) : (!torch_tensor_1, !torch_tensor_2) -> !torch_tensor_3
      %1 = "torch.constant.float"() <{value = 1.500000e+00 : f64}> : () -> !torch_tensor_4
      %2 = "torch.aten.add.Tensor"(%0, %1) : (!torch_tensor_3, !torch_tensor_4) -> !torch_tensor_3
      "func.return"(%2) : (!torch_tensor_3) -> ()
  }) : () -> ()
}) : () -> ()

#type_defs
    = {
      torch_tensor_1 = "tensor" : !torch_tensor_1_type,
      torch_tensor_2 = "tensor" : !torch_tensor_2_type,
      torch_tensor_3 = "tensor" : !torch_tensor_3_type,
      torch_tensor_4 = "tensor" : !torch_tensor_4_type
    } 

#type_alias 
    = {
      torch_tensor_1_type = tensor<128x128xf32>,
      torch_tensor_2_type = tensor<128x128xf32>,
      torch_tensor_3_type = tensor<128x128xf32>,
      torch_tensor_4_type = tensor<128x128xf32>
    } 

#attribute_alias 
    = {
      torch_tensor_1 = tensor<128x128xf32>,
      torch_tensor_2 = tensor<128x128xf32>,
      torch_tensor_3 = tensor<128x128xf32>,
      torch_tensor_4 = tensor<128x128xf32>
    } 

#map_or_set_def 
    = {
      torch_tensor_1 = tensor<128x128xf32>,
      torch_tensor_2 = tensor<128x128xf32>,
      torch_tensor_3 = tensor<128x128xf32>,
      torch_tensor_4 = tensor<128x128xf32>
    } 

#dialect_attribute 
    = {
      torch_tensor_1 = tensor<128x128xf32>,
      torch_tensor_2 = tensor<128x128xf32>,
      torch_tensor_3 = tensor<128x128xf32>,
      torch_tensor_4 = tensor<128x128xf32>
    } 

#dialect_type 
    = {
      torch_tensor_1 = tensor<128x128xf32>,
      torch_tensor_2 = tensor<128x128xf32>,
      torch_tensor_3 = tensor<128x128xf32>,
      torch_tensor_4 = tensor<128x128xf32>
    } 

#property_dict 
    = {
      torch_tensor_1 = tensor<128x128xf32>,
      torch_tensor_2 = tensor<128x128xf32>,
      torch_tensor_3 = tensor<128x128xf32>,
      torch_tensor_4 = tensor<128x128xf32>
    } 

#attribute_dict 
    = {
      torch_tensor_1 = tensor<128x128xf32>,
      torch_tensor_2 = tensor<128x128xf32>,
      torch_tensor_3 = tensor<128x128xf32>,
      torch_tensor_4 = tensor<128x128xf32>
    } 

#attribute_value 
    = {
      torch_tensor_1 = tensor<128x128xf32>,
      torch_tensor_2 = tensor<128x128xf32>,
      torch_tensor_3 = tensor<128x128xf32>,
      torch_tensor_4 = tensor<128x128xf32>
    } 

#ssa_use 
    = {
      torch_tensor_1 = tensor<128x128xf32>,
      torch_tensor_2 = tensor<128x128xf32>,
      torch_tensor_3 = tensor<128x128xf32>,
      torch_tensor_4 = tensor<128x128xf32>
    } 

#ssa_id 
    = {
      torch_tensor_1 = tensor<128x128xf32>,
      torch_tensor_2 = tensor<128x128xf32>,
      torch_tensor_3 = tensor<128x128xf32>,
      torch_tensor_4 = tensor<128x128xf32>
    } 

#operation 
    = {
      torch_tensor_1 = tensor<128x128xf32>,
      torch_tensor_2 = tensor<128x128xf32>,
      torch_tensor_3 = tensor<128x128xf32>,
      torch_tensor_4 = tensor<128x128xf32>
    } 

#block 
    = {
      torch_tensor_1 = tensor<128x128xf32>,
      torch_tensor_2 = tensor<128x128xf32>,
      torch_tensor_3 = tensor<128x128xf32>,
      torch_tensor_4 = tensor<128x128xf32>
    } 

#region 
    = {
      torch_tensor_1 = tensor<128x128xf32>,
      torch_tensor_2 = tensor<128x128xf32>,
      torch_tensor_3 = tensor<128x128xf32>,
      torch_tensor_4 = tensor<128x128xf32>
    } 

#module 
    = {
      torch_tensor_1 = tensor<128x128xf32>,
      torch_tensor_2 = tensor<128x128xf32>,
      torch_tensor_3 = tensor<128x128xf32>,
      torch_tensor_4 = tensor<128x128xf32>
    } 

#function 
    = {
      torch_tensor_1 = tensor<128x128xf32>,
      torch_tensor_2 = tensor<128x128xf32>,
      torch_tensor_3 = tensor<128x128xf32>,
      torch_tensor_4 = tensor<128x128xf32>
    } 

#block_label 
    = {
      torch_tensor_1 = tensor<128x128xf32>,
      torch_tensor_2 = tensor<128x128xf32>,
      torch_tensor_3 = tensor<128x128xf32>,
      torch_tensor_4 = tensor<128x128xf32>
    } 

#successor_list 
    = {
      torch_tensor_1 = tensor<128x128xf32>,
      torch_tensor_2 = tensor<128x128xf32>,
      torch_tensor_3 = tensor<128x128xf32>,
      torch_tensor_4 = tensor<128x128xf32>
    } 

#op_result 
    = {
      torch_tensor_1 = tensor<128x128xf32>,
      torch_tensor_2 = tensor<128x128xf32>,
      torch_tensor_3 = tensor<128x128xf32>,
      torch_tensor_4 = tensor<128x128xf32>
    } 

#op_result_list 
    = {
      torch_tensor_1 = tensor<128x128xf32>,
      torch_tensor_2 = tensor<128x128xf32>,
      torch_tensor_3 = tensor<128x128xf32>,
      torch_tensor_4 = tensor<128x128xf32>
    } 

#trailing_type 
    = {
      torch_tensor_1 = tensor<128x128xf32>,
      torch_tensor_2 = tensor<128x128xf32>,
      torch_tensor_3 = tensor<128x128xf32>,
      torch_tensor_4 = tensor<128x128xf32>
    } 

#ssa_id_and_type 
    = {
      torch_tensor_1 = tensor<128x128xf32>,
     