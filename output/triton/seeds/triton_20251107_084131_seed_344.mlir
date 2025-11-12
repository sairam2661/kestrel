"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<3xi32>, i32) -> (), sym_name = "test_function", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<3xi32>, %arg1: i32):
    %0 = "tt.make_range"() <{end = 3 : i32, start = 0 : i32}> : () -> tensor<3xi32>
    %1 = "arith.cmpi"(%0, %arg1) <{predicate = 4 : i64}> : (tensor<3xi32>, i32) -> tensor<3xi1>
    %2 = "arith.select"(%1, %arg0, %0) : (tensor<3xi1>, tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    %3 = "arith.subi"(%2, %arg0) : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    %4 = "scf.if"(%1) ({
      %5 = "arith.addi"(%3, %arg0) : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
      "tt.return"(%5) : (tensor<3xi32>) -> ()
    }, {
      %6 = "arith.muli"(%3, %arg1) : (tensor<3xi32>, i32) -> tensor<3xi32>
      "tt.return"(%6) : (tensor<3xi32>) -> ()
    }) : (tensor<3xi1>) -> tensor<3xi32>
    "tt.return"(%4) : (tensor<3xi32>) -> ()
  }) : () -> ()
}) : () -> ()