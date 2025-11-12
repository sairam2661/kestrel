"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xi16>, tensor<10x10xi16>) -> tensor<10x10xi16>, sym_name = "tensor_op_combinations"}> ({
  ^bb0(%arg0: tensor<10x10xi16>, %arg1: tensor<10x10xi16>):
    %0 = "arith.constant"() <{value = dense<1 : i16> : tensor<10x10xi16>}> : () -> tensor<10x10xi16>
    %1 = "arith.constant"() <{value = dense<2 : i16> : tensor<10x10xi16>}> : () -> tensor<10x10xi16>
    %2 = "linalg.map"(%1, %arg0, %0) ({
    ^bb0(%arg3: i16, %arg4: i16):
      %5 = "arith.addi"(%arg3, %arg4) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
      "linalg.yield"(%5) : (i16) -> ()
    }) : (tensor<10x10xi16>, tensor<10x10xi16>, tensor<10x10xi16>) -> tensor<10x10xi16>
    %3 = "scf.for"() <{lower_bound = 0 : i32, upper_bound = 10 : i32, step = 1 : i32, parallel_loops = 0 : i32}> ({
    ^bb0(%iv: i32):
      %4 = "scf.for"() <{lower_bound = 0 : i32, upper_bound = 10 : i32, step = 1 : i32, parallel_loops = 0 : i32}> ({
      ^bb0(%jv: i32):
        %6 = "tensor.extract"(%2, %iv, %jv) : (tensor<10x10xi16>, i32, i32) -> i16
        %7 = "arith.muli"(%6, %6) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
        %8 = "tensor.insert"(%7, %2, %iv, %jv) : (i16, tensor<10x10xi16>, i32, i32) -> tensor<10x10xi16>
        "scf.yield"(%8) : (tensor<10x10xi16>) -> ()
      }) : (tensor<10x10xi16>) -> tensor<10x10xi16>
      "scf.yield"(%4) : (tensor<10x10xi16>) -> ()
    }) : (tensor<10x10xi16>) -> tensor<10x10xi16>
    "func.return"(%3) : (tensor<10x10xi16>) -> ()
  }) : () -> ()
}) : () -> ()