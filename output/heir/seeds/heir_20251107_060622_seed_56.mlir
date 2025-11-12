"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, i32) -> i32, sym_name = "tensor_sum"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "scf.for"(%0, %1, %2, %0) ({
    ^bb0(%arg2: index, %arg3: i32):
      %4 = "scf.for"(%0, %1, %2, %arg3) ({
      ^bb0(%arg4: index, %arg5: i32):
        %6 = "tensor.extract"(%arg0, %arg2, %arg4) : (tensor<2x2xi32>, index, index) -> i32
        %7 = "arith.addi"(%6, %arg5) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
        "scf.yield"(%7) : (i32) -> ()
      }) : (index, index, index, i32) -> i32
      "scf.yield"(%4) : (i32) -> ()
    }) : (index, index, index, i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()