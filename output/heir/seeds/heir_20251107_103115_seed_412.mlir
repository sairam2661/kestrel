"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi8>) -> i32, sym_name = "complex_reduction"}> ({
  ^bb0(%arg0: tensor<8xi8>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 255 : i8}> : () -> i8
    %2 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %3 = "scf.for"(%0, %0, %1, %2) ({
    ^bb0(%arg1: index, %arg2: i32):
      %4 = "tensor.extract"(%arg0, %arg1) : (tensor<8xi8>, index) -> i8
      %5 = "arith.extui"(%4) : (i8) -> i32
      %6 = "arith.addi"(%5, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> ()
    }) : (index, index, i32) -> i32
    %7 = "arith.constant"() <{value = 2 : index}> : () -> index
    %8 = "scf.for"(%0, %7, %1, %2) ({
    ^bb0(%arg3: index, %arg4: i32):
      %9 = "tensor.extract"(%arg0, %arg3) : (tensor<8xi8>, index) -> i8
      %10 = "arith.extui"(%9) : (i8) -> i32
      %11 = "arith.addi"(%10, %arg4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%11) : (i32) -> ()
    }) : (index, index, i32) -> i32
    %12 = "arith.addi"(%3, %8) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%12) : (i32) -> ()
  }) : () -> ()
}) : () -> ()