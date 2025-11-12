"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x5xi32>, tensor<5x5xi32>) -> tensor<5x5xi32>, sym_name = "tensor_layout_test"}> ({
  ^bb0(%arg0: tensor<5x5xi32>, %arg1: tensor<5x5xi32>):
    %0 = "tensor_ext.assign_layout"(%arg0) <{layout = #tensor_ext_new_layout}> {tensor_ext.layout = #tensor_ext_new_layout} : (tensor<5x5xi32>) -> tensor<5x5xi32>
    %1 = "tensor_ext.assign_layout"(%arg1) <{layout = #tensor_ext_new_layout}> {tensor_ext.layout = #tensor_ext_new_layout} : (tensor<5x5xi32>) -> tensor<5x5xi32>
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow_none}> : (tensor<5x5xi32>, tensor<5x5xi32>) -> tensor<5x5xi32>
    "func.return"(%2) : (tensor<5x5xi32>) -> ()
  }) : () -> ()
}) : () -> ()

#tensor_ext_new_layout = #tensor_ext_new_layout "{ [i, j] -> [r, c] : r = i mod 5 and c = j mod 5 and 0 <= r < 5 and 0 <= c < 5 }"(tensor<5x5xi32>) 

(  {  }  )  

:  ()

#arith_overflow_none = #arith_overflow_none "none"  

(  )  

(  {  }  )  

:  ()