"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "nested_loops_and_consts"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "tosa.const"() <{value = dense<42> : tensor<1xi32>}> : () -> tensor<1xi32>
    %1 = "tosa.const"() <{value = dense<100> : tensor<1xi64>}> : () -> tensor<1xi64>
    %2 = "scf.for"(%arg0, %arg1) <{lowerBound = 0 : i32, upperBound = 10 : i32, step = 1 : i32}> ({
    ^bb1(%arg2: i32, %arg3: i64):
      %3 = "arith.addi"(%arg2, %0) <{overflowFlags = #arithOverflowFlags}>( ) : (i32, tensor<1xi32>) -> i32
      %4 = "arith.addi"(%arg3, %1) <{overflowFlags = #arithOverflowFlags}>( ) : (i64, tensor<1xi64>) -> i64
      %5 = "tosa.const"() <{value = dense<1> : tensor<1xi32>}> : () -> tensor<1xi32>
      "scf.yield"(%arg2, %arg3, %3, %4) : (i32, i64, i32, i64) -> ()
    }, {
    ^bb2(%arg4: i32, %arg5: i64, %arg6: i32, %arg7: i64):
      "scf.yield"(%arg6, %arg7) : (i32, i64) -> ()
    }) : (i32, i64) -> (i32, i64)
    "func.return"(%2#0, %2#1) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ( )