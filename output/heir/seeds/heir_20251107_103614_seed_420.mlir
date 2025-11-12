"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<2x3xi8>) -> tensor<2x3xi8>, sym_name = "process_data", sym_visibility = "private"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<2x3xi8>):
    %0 = "arith.constant"() <{value = 127 : i8}> : () -> i8
    %1 = "arith.muli"(%arg0, %arg0) <{overflowFlags = #arith_overflow_flagless}> : (i32, i32) -> i32
    %2 = "secret.generic"(%1) ({
    ^bb1(%arg2: i32):
      %3 = "arith.subi"(%arg2, %0) <{overflowFlags = #arith_overflow_flagless}> : (i32, i8) -> i32
      "secret.yield"(%3) : (i32) -> ()
    }) : (i32) -> i32
    %4 = "tensor.insert"(%2, %arg1) <{indices = [0, 0]}> : (i32, tensor<2x3xi8>) -> tensor<2x3xi8>
    "func.return"(%4) : (tensor<2x3xi8>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2x3xi8>) -> tensor<2x3xi8>, sym_name = "main"}> ({
  ^bb0(%arg0: tensor<2x3xi8>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "func.call"(%0, %arg0) <{callee = @process_data}> : (i32, tensor<2x3xi8>) -> tensor<2x3xi8>
    "func.return"(%1) : (tensor<2x3xi8>) -> ()
  }) : () -> ()
}) : () -> ()