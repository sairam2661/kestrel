"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> (tensor<32xi32>, tensor<32xi32>), sym_name = "mixed_op_types"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
    %0 = "arith.constant"() <{value = dense<5> : tensor<32xi32>}> : () -> tensor<32xi32>
    %1 = "arith.remsi"(%arg0, %0) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %2 = "arith.divsi"(%arg1, %0) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %3 = "arith.select"(%arg0, %1, %2) : (tensor<32xi32>, tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %4 = "arith.subi"(%arg0, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %5 = "arith.cmpi"(%arg0, %arg1) <{predicate = 4 : i64}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<1xi1>
    %6 = "scf.if"(%5) ({
      %7 = "arith.addi"(%arg0, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "scf.yield"(%7) : (tensor<32xi32>) -> ()
    }, {
      %8 = "arith.muli"(%arg0, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "scf.yield"(%8) : (tensor<32xi32>) -> ()
    }) : (tensor<1xi1>) -> tensor<32xi32>
    "tt.return"(%3, %6) : (tensor<32xi32>, tensor<32xi32>) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32) -> (i32, i32), sym_name = "nested_loops"}> ({
  ^bb0(%arg2: i32):
    %9 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %10 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %11 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %12:2 = "scf.for"(%11, %arg2, %10, %11, %11) ({
    ^bb0(%arg3: i32, %arg4: i32, %arg5: i32):
      %13:2 = "scf.for"(%11, %arg3, %10, %11, %11) ({
      ^bb0(%arg6: i32, %arg7: i32, %arg8: i32):
        %14 = "arith.addi"(%arg6, %arg7) : (i32, i32) -> i32
        %15 = "arith.muli"(%arg6, %arg7) : (i32, i32) -> i32
        "scf.yield"(%14, %15) : (i32, i32) -> ()
      }) : (i32, i32, i32, i32, i32) -> (i32, i32)
      "scf.yield"(%13#0, %13#1) : (i32, i32) -> ()
    }) : (i32, i32, i32, i32, i32) -> (i32, i32)
    "tt.return"(%12#0, %12#1) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()