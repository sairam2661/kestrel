"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<100xi32>, tensor<100xi32>, tensor<100xi32>) -> (tensor<100xi32>), sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: tensor<100xi32>, %arg1: tensor<100xi32>, %arg2: tensor<100xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<100xi32>}> : () -> tensor<100xi32>
    %1 = "arith.xori"(%arg0, %arg1) : (tensor<100xi32>, tensor<100xi32>) -> tensor<100xi32>
    %2 = "arith.subi"(%1, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<100xi32>, tensor<100xi32>) -> tensor<100xi32>
    %3 = "arith.remsi"(%2, %0) : (tensor<100xi32>, tensor<100xi32>) -> tensor<100xi32>
    %4 = "arith.cmpi"(%3, %arg0) <{predicate = 3 : i64}> : (tensor<100xi32>, tensor<100xi32>) -> tensor<100xi1>
    %5 = "scf.if"(%4) ({
      %6 = "scf.for"() <{end = 50 : i32, start = 0 : i32, step = 1 : i32}> ({
      ^bb1(%iv: i32):
        %7 = "arith.addi"(%iv, %iv) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        %8 = "arith.constant"() <{value = 5 : i32}> : () -> i32
        %9 = "arith.mul"(%7, %8) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"() : () -> ()
      }) : () -> ()
      "scf.yield"(%5) : (tensor<100xi1>) -> ()
    }, {
      "scf.yield"(%4) : (tensor<100xi1>) -> ()
    }) : (tensor<100xi1>) -> tensor<100xi1>
    "tt.return"(%5) : (tensor<100xi1>) -> ()
  }) : () -> ()
}) : () -> ()