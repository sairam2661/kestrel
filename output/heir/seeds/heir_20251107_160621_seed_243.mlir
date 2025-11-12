"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, index, index) -> i32, sym_name = "tensor_and_index_complex"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: index, %arg2: index):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "scf.for"(%arg1, %arg2) ({
    ^bb0(%i: index, %j: index):
      %3 = "arith.addi"(%i, %j) <{overflowFlags = #arith_overflownone}> : (index, index) -> index
      %4 = "tensor.extract"(%arg0, %3) : (tensor<4xi32>, index) -> i32
      %5 = "arith.muli"(%4, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%j, %5) : (index, i32) -> ()
    }, {
    ^bb1(%i: index, %acc: i32):
      %6 = "arith.addi"(%acc, %i) <{overflowFlags = #arith_overflownone}> : (i32, index) -> i32
      "scf.yield"(%6) : (i32) -> ()
    }) {lower_bound = #loc_56, upper_bound = #loc_57, step = #loc_58, kind = #loc_59} : (index, index) -> i32
    "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()