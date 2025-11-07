"builtin.module"() ({
  "tt.func"() <{function_type = (i1, tensor<4xi1>) -> (), sym_name = "select"}> ({
  ^bb0(%arg0: i1, %arg1: tensor<4xi1>):
    %0 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %1 = "arith.constant"() <{value = dense<0> : tensor<128xi32>}> : () -> tensor<128xi32>
    %2 = "arith.cmpi"(%0, %1) <{predicate = 0 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %3 = "arith.cmpi"(%0, %1) <{predicate = 2 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %4 = "arith.constant"() <{value = false}> : () -> i1
    %5 = "tt.splat"(%4) : (i1) -> tensor<128xi1>
    %6 = "arith.select"(%4, %3, %5) : (i1, tensor<128xi1>, tensor<128xi1>) -> tensor<128xi1>
    %7 = "arith.select"(%5, %3, %2) : (tensor<128xi1>, tensor<128xi1>, tensor<128xi1>) -> tensor<128xi1>
    %8 = "tt.expand_dims"(%2) <{axis = 1 : i32}> : (tensor<128xi1>) -> tensor<128x1xi1>
    %9 = "tt.expand_dims"(%3) <{axis = 1 : i32}> : (tensor<128xi1>) -> tensor<128x1xi1>
    %10 = "arith.select"(%arg0, %8, %9) : (i1, tensor<128x1xi1>, tensor<128x1xi1>) -> tensor<128x1xi1>
    %11 = "arith.constant"() <{value = dense<4> : tensor<4xi32>}> : () -> tensor<4xi32>
    %12 = "tt.make_range"() <{end = 4 : i32, start = 0 : i32}> : () -> tensor<4xi32>
    %13 = "arith.muli"(%12, %11) <{overflowFlags = #arith.overflow<none>}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %14 = "tt.make_range"() <{end = 20 : i32, start = 16 : i32}> : () -> tensor<4xi32>
    %15 = "arith.select"(%arg1, %12, %13) : (tensor<4xi1>, tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

