"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<2x3xi16>) -> tensor<2x3xi8>, sym_name = "complex_conversion"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<2x3xi16>):
    %0 = "arith.constant"() <{value = 127 : i16}> : () -> i16
    %1 = "arith.cmpi"(%arg0, %0) <{predicate = "slt"}> : (i32, i16) -> i1
    %2 = "arith.select"(%1, %arg1, %0) : (i1, tensor<2x3xi16>, i16) -> tensor<2x3xi16>
    %3 = "arith.extsi"(%2) : (tensor<2x3xi16>) -> tensor<2x3xi32>
    %4 = "arith.trunci"(%3) : (tensor<2x3xi32>) -> tensor<2x3xi8>
    "func.return"(%4) : (tensor<2x3xi8>) -> ()
  }) : () -> ()
}) : () -> ()