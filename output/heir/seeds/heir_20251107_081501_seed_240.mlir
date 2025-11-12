"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, i32, index) -> i32, sym_name = "complex_example"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: i32, %arg2: index):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 5 : index}> : () -> index
    %3 = "arith.addi"(%arg1, %0) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %4 = "arith.cmpi"(%3, %1) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %5 = "arith.select"(%4, %0, %1) : (i1, i32, i32) -> i32
    %6 = "scf.for"(%arg2, %0, %2, %5) ({
    ^bb1(%arg3: index, %arg4: i32):
      %7 = "arith.addi"(%arg4, %arg4) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      "scf.yield"(%7) : (i32) -> ()
    }) {lower = 0 : i64, upper = 10 : i64} : (index, i32, index, i32) -> i32
    "func.return"(%6) : (i32) -> ()
  }) : () -> ()
}) : () -> ()