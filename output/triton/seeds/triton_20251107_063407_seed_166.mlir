"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<i32>, tensor<i32>) -> tensor<i32>, sym_name = "tensor_mixer"}> ({
  ^bb0(%arg0: tensor<i32>, %arg1: tensor<i32>):
    %0 = "tt.make_range"() <{end = 1024 : i32, start = 0 : i32, strides = [1, 2]}> : () -> tensor<1024x2xi32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<1024x2xi32>}> : () -> tensor<1024x2xi32>
    %2 = "arith.muli"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<1024x2xi32>, tensor<1024x2xi32>) -> tensor<1024x2xi32>
    %3 = "arith.constant"() <{value = dense<2> : tensor<1024xi32>}> : () -> tensor<1024xi32>
    %4 = "arith.muli"(%2, %3) <{overflowFlags = #arith_overflownone}> : (tensor<1024x2xi32>, tensor<1024xi32>) -> tensor<1024x2xi32>
    %5 = "arith.xori"(%4, %arg0) : (tensor<1024x2xi32>, tensor<i32>) -> tensor<1024x2xi32>
    "scf.if"(%arg1) ({
      %6 = "arith.addi"(%5, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<1024x2xi32>, tensor<i32>) -> tensor<1024x2xi32>
      "tt.return"(%6) : (tensor<1024x2xi32>) -> ()
    }, {
      %7 = "arith.remsi"(%5, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<1024x2xi32>, tensor<i32>) -> tensor<1024x2xi32>
      "tt.return"(%7) : (tensor<1024x2xi32>) -> ()
    }) : (tensor<i32>) -> tensor<1024x2xi32>
  }) : () -> ()
}) : () -> ()