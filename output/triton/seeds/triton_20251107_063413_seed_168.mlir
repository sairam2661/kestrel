"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<i32>) -> tensor<i32>, sym_name = "tensor_mutation"}> ({
    ^bb0(%arg0: i32, %arg1: tensor<i32>):
      %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %2 = "arith.cmpi"(%arg0, %0) <{predicate = 0 : i64}> : (i32, i32) -> i1
      %3 = "arith.cmpi"(%arg0, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
      %4 = "scf.if"(%2) ({
        %5 = "arith.addi"(%arg0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%5) : (i32) -> ()
      }, {
        "scf.yield"(%arg0) : (i32) -> ()
      }) : (i1) -> i32
      %6 = "arith.xori"(%arg0, %4) : (i32, i32) -> i32
      %7 = "arith.constant"() <{value = dense<3> : tensor<i32>}> : () -> tensor<i32>
      %8 = "arith.muli"(%6, %7) <{overflowFlags = #arith_overflownone}> : (i32, tensor<i32>) -> tensor<i32>
      %9 = "tt.reduce"(%arg1) ({
        ^bb1(%acc: i32, %val: i32):
          %10 = "arith.addi"(%acc, %val) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
          "scf.yield"(%10) : (i32) -> ()
      }) {tt.identity = 0 : i32} : (tensor<i32>) -> i32
      "tt.return"(%8) : (tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()