"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<2xf32>, tensor<2xf32>) -> tensor<2xf32>, sym_name = "tensor_operations"}> ({
  ^bb0(%arg0: tensor<2xf32>, %arg1: tensor<2xf32>):
    %0 = "tt.expand_dims"(%arg0) <{dims = [0]}> : (tensor<2xf32>) -> tensor<1x2xf32>
    %1 = "tt.expand_dims"(%arg1) <{dims = [0]}> : (tensor<2xf32>) -> tensor<1x2xf32>
    %2 = "arith.addf"(%0, %1) : (tensor<1x2xf32>, tensor<1x2xf32>) -> tensor<1x2xf32>
    %3 = "tt.reduce"(%2) <{operation = "add", identity = 0.0}> : (tensor<1x2xf32>) -> tensor<2xf32>
    "tt.return"(%3) : (tensor<2xf32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()