"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi16>, tensor<8xi16>) -> tensor<8xi16>, sym_name = "mixed_arithmetic_and_tensor_operations"}> ({
  ^bb0(%arg0: tensor<8xi16>, %arg1: tensor<8xi16>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %3 = "tensor.extract"(%arg0, %0) : (tensor<8xi16>, index) -> i16
    %4 = "tensor.extract"(%arg1, %1) : (tensor<8xi16>, index) -> i16
    %5 = "arith.addi"(%3, %4) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %6 = "tensor.insert"(%5, %arg0, %2) : (i16, tensor<8xi16>, index) -> tensor<8xi16>
    %7 = "arith.cmpi"(%3, %4, "ne") : (i16, i16) -> i1
    %8 = "arith.select"(%7, %6, %arg0) : (i1, tensor<8xi16>, tensor<8xi16>) -> tensor<8xi16>
    "func.return"(%8) : (tensor<8xi16>) -> ()
  }) : () -> ()
}) : () -> ()