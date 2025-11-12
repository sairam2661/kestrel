"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>, sym_name = "unusual_op_sequence"}> ({
  ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<64xi32>}> : () -> tensor<64xi32>
    %1 = "arith.xori"(%arg0, %0) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %2 = "arith.muli"(%arg1, %1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %3 = "arith.cmpi"(%arg1, %2) <{predicate = "eq"}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi1>
    %4 = "arith.subi"(%arg0, %2) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %5 = "tt.reduce"(%4) <{operation = "add"}> ({
      ^bb1(%acc: i32, %val: i32):
        %6 = "arith.addi"(%acc, %val) : (i32, i32) -> i32
        "tt.yield"(%6) : (i32) -> ()
    }) : (tensor<64xi32>) -> i32
    %7 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %8 = "arith.addi"(%5, %7) : (i32, i32) -> i32
    %9 = "arith.cmpi"(%8, %7) <{predicate = "sgt"}> : (i32, i32) -> i1
    "scf.if"(%9) ({
      "tt.return"(%arg0) : (tensor<64xi32>) -> ()
    }, {
      "tt.return"(%arg1) : (tensor<64xi32>) -> ()
    }) : (i1) -> ()
  }) : () -> ()
}) : () -> ()