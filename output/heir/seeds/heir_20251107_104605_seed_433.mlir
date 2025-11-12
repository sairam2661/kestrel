"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi8>, tensor<8xi8>) -> i8, sym_name = "mixed_operations"}> ({
  ^bb0(%arg0: tensor<8xi8>, %arg1: tensor<8xi8>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %3 = "tensor_ext.rotate"(%arg0, %0) : (tensor<8xi8>, index) -> tensor<8xi8>
    %4 = "arith.addi"(%3, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<8xi8>, tensor<8xi8>) -> tensor<8xi8>
    %5 = "tensor.extract"(%4, %1) : (tensor<8xi8>, index) -> i8
    %6 = "arith.subi"(%5, %2) <{overflowFlags = #arith_overflownone}> : (i8, index) -> i8
    %7 = "arith.mulf"(%5, %5) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> f32
    %8 = "comb.truth_table"(%6) <{table = [0, 1, 0, 1]}> : (i8) -> i1
    %9 = "arith.select"(%8, %7, %5) : (i1, f32, i8) -> f32
    "func.return"(%9) : (f32) -> ()
  }) : () -> ()
}) : () -> ()