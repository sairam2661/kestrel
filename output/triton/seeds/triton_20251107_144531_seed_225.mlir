"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<8xi32>) -> (), sym_name = "fuzz_complex"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "scf.for"(%0, %1, %0) ({
    ^bb1(%arg2: i32):
      %3 = "arith.addi"(%arg2, %1) : (i32, i32) -> i32
      %4 = "arith.cmpi"(%arg2, %3) <{predicate = 4 : i64}> : (i32, i32) -> i1
      %5 = "scf.if"(%4) ({
        %6 = "arith.xori"(%arg2, %1) : (i32, i32) -> i32
        "scf.yield"(%6) : (i32) -> ()
      }, {
        %7 = "arith.subi"(%arg2, %1) : (i32, i32) -> i32
        "scf.yield"(%7) : (i32) -> ()
      }) : (i1) -> i32
      "scf.yield"() : () -> ()
    }) : (i32, i32, i32) -> ()
    %8 = "arith.constant"() <{value = dense<1> : tensor<8xi1>}> : () -> tensor<8xi1>
    %9 = "arith.select"(%8, %arg1, %0) : (tensor<8xi1>, tensor<8xi32>, i32) -> tensor<8xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()