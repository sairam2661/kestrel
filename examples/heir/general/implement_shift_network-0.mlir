#new_layout = #tensor_ext.new_layout<"{ [ct1, slot1] -> [ct2, slot2] : ct1 = 0 and ct2 = 0 and ((slot1 - 1) - slot2) mod 64 = 0 and slot1 >= 0 and 63 >= slot1 and slot2 >= 0 and 63 >= slot2 }">
#new_layout1 = #tensor_ext.new_layout<"{ [ct1, slot1] -> [ct2, slot2] : ct1 = 0 and ct2 = 0 and ((slot1 + 1) - slot2) mod 64 = 0 and slot1 >= 0 and 63 >= slot1 and slot2 >= 0 and 63 >= slot2 }">
#new_layout2 = #tensor_ext.new_layout<"{ [ct1, slot1] -> [ct2, slot2] : ct1 = 0 and ct2 = 0 and slot1 = slot2 and slot1 >= 0 and 63 >= slot1 and slot2 >= 0 and 63 >= slot2 }">
#new_layout3 = #tensor_ext.new_layout<"{ [ct1, slot1] -> [ct2, slot2] : (ct1 - ct2) mod 4 = 3 and (slot1 - slot2) mod 64 = 0 and 0 <= ct1 <= 3 and 0 <= ct2 <= 3 and 0 <= slot1 <= 63 and 0 <= slot2 <= 63 }">
#new_layout4 = #tensor_ext.new_layout<"{ [ct1, slot1] -> [ct2, slot2] : (ct1 - ct2) mod 4 = 3 and (slot1 - slot2) mod 64 = 5 and 0 <= ct1 <= 3 and 0 <= ct2 <= 3 and 0 <= slot1 <= 63 and 0 <= slot2 <= 63 }">
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x64xi32>) -> tensor<1x64xi32>, sym_name = "test_no_conflicts"}> ({
  ^bb0(%arg4: tensor<1x64xi32>):
    %4 = "tensor_ext.permute"(%arg4) <{permutation = #new_layout}> : (tensor<1x64xi32>) -> tensor<1x64xi32>
    "func.return"(%4) : (tensor<1x64xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<1x64xi32>) -> tensor<1x64xi32>, sym_name = "test_no_conflicts2"}> ({
  ^bb0(%arg3: tensor<1x64xi32>):
    %3 = "tensor_ext.permute"(%arg3) <{permutation = #new_layout1}> : (tensor<1x64xi32>) -> tensor<1x64xi32>
    "func.return"(%3) : (tensor<1x64xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<1x64xi32>) -> tensor<1x64xi32>, sym_name = "identity"}> ({
  ^bb0(%arg2: tensor<1x64xi32>):
    %2 = "tensor_ext.permute"(%arg2) <{permutation = #new_layout2}> : (tensor<1x64xi32>) -> tensor<1x64xi32>
    "func.return"(%2) : (tensor<1x64xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<4x64xi32>) -> tensor<4x64xi32>, sym_name = "multi_ciphertext_swap_cts"}> ({
  ^bb0(%arg1: tensor<4x64xi32>):
    %1 = "tensor_ext.permute"(%arg1) <{permutation = #new_layout3}> : (tensor<4x64xi32>) -> tensor<4x64xi32>
    "func.return"(%1) : (tensor<4x64xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<4x64xi32>) -> tensor<4x64xi32>, sym_name = "multi_ciphertext_complex"}> ({
  ^bb0(%arg0: tensor<4x64xi32>):
    %0 = "tensor_ext.permute"(%arg0) <{permutation = #new_layout4}> : (tensor<4x64xi32>) -> tensor<4x64xi32>
    "func.return"(%0) : (tensor<4x64xi32>) -> ()
  }) : () -> ()
}) : () -> ()

