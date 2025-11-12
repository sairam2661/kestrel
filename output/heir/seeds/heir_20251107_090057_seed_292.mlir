"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, tensor<16xi8>) -> tensor<16xi8>, sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: tensor<16xi8>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
    %2 = "arith.muli"(%1, %arg1) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
    %3 = "arith.constant"() <{value = 8 : i32}> : () -> i32
    %4 = "arith.cmpi"(%2, %3) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %5 = "scf.if"(%4) ({
      %6 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %7 = "arith.muli"(%2, %6) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
      "scf.yield"(%7) : (i32) -> ()
    }, {
      %8 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
      "scf.yield"(%8) : (i32) -> ()
    }) : (i1) -> i32
    %9 = "tensor_ext.assign_layout"(%arg2) <{layout = "offset:0, strides:[1]"}> : (tensor<16xi8>) -> tensor<16xi8>
    %10 = "tensor.insert"(%5, %9, %0) <{indices = [0]}> : (i32, tensor<16xi8>, i32) -> tensor<16xi8>
    "func.return"(%10) : (tensor<16xi8>) -> ()
  }) : () -> ()
}) : () -> ()