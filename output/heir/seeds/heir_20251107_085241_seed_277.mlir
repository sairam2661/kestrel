"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (tensor<16xi32>) -> tensor<16xi32>, sym_name = "tensor_transform"}> ({
  ^bb0(%arg0: tensor<16xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %5 = "scf.for"(%0, %1, %2, %arg0) ({
    ^bb1(%arg1: i32, %arg2: tensor<16xi32>):
      %6 = "scf.for"(%3, %4, %5, %arg2) ({
      ^bb2(%arg3: i32, %arg4: tensor<16xi32>):
        %7 = "tensor.extract"(%arg4, %arg3) : (tensor<16xi32>, i32) -> i32
        %8 = "arith.muli"(%7, %arg1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
        %9 = "tensor.insert"(%8, %arg4, %arg3) : (i32, tensor<16xi32>, i32) -> tensor<16xi32>
        "scf.yield"(%9) : (tensor<16xi32>) -> ()
      }) : (i32, i32, i32, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%6) : (tensor<16xi32>) -> ()
    }) : (i32, i32, i32, tensor<16xi32>) -> tensor<16xi32>
    "func.return"(%5) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()