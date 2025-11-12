"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi8>, sym_name = "byte_xor_unroll"}> ({
  ^bb0(%arg0: tensor<2x3xi8>, %arg1: tensor<2x3xi8>):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32

    "scf.for"(%c0_i32) <{upper_bound = 2, step = 1}> ({
    ^bb1(%iv: i32):
      "scf.for"(%c0_i32) <{upper_bound = 3, step = 1}> ({
      ^bb2(%jv: i32):
        %elem0 = "tensor.extract"(%arg0, %iv, %jv) : (tensor<2x3xi8>, i32, i32) -> i8
        %elem1 = "tensor.extract"(%arg1, %iv, %jv) : (tensor<2x3xi8>, i32, i32) -> i8
        %xor_result = "arith.xori"(%elem0, %elem1) : (i8, i8) -> i8
        "tensor.insert"(%xor_result, %arg0, %iv, %jv) : (i8, tensor<2x3xi8>, i32, i32) -> tensor<2x3xi8>
        "scf.yield"() : () -> ()
      }) : () -> ()
      "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%arg0) : (tensor<2x3xi8>) -> ()
  }) : () -> ()
}) : () -> ()