"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1xi8>, tensor<1x1xi32>) -> tensor<1x1xi8>, sym_name = "test_rescale_with_nested_regions"}> ({
  ^bb0(%arg0: tensor<1x1xi8>, %arg1: tensor<1x1xi32>):
    %0 = "tosa.const"() <{values = dense<1> : tensor<1xi8>}> : () -> tensor<1xi8>
    %1 = "tosa.const"() <{values = dense<2> : tensor<1xi32>}> : () -> tensor<1xi32>
    %2 = "tosa.const"() <{values = dense<3> : tensor<1xi8>}> : () -> tensor<1xi8>
    %3 = "tosa.const"() <{values = dense<-128> : tensor<1xi8>}> : () -> tensor<1xi8>
    "scf.for"(%arg1, %c0_i32, %c10_i32, %c1_i32) <{parallel_loop = false}> ({
    ^bb1(%iv: i32):
      %4 = "arith.addi"(%iv, %c1_i32) : (i32, i32) -> i32
      "scf.yield"(%4) : (i32) -> ()
    }) : (i32) -> (i32)
    %5 = "tosa.rescale"(%arg0, %1, %0, %3, %2) <{input_unsigned = true, output_unsigned = false, per_channel = false, rounding_mode = "SINGLE_ROUND", scale32 = true}> : (tensor<1x1xi8>, tensor<1xi32>, tensor<1xi8>, tensor<1xi8>, tensor<1xi8>) -> tensor<1x1xi8>
    "func.return"(%5) : (tensor<1x1xi8>) -> ()
  }) : () -> ()
}) : () -> ()