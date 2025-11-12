"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, i32) -> i32, sym_name = "complex_sequential_ops"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.addi"(%arg1, %0) : (i32, i32) -> i32
    %2 = "secret.generic"(%arg0, %1) ({
    ^bb1(%arg2: i32):
      %3 = "arith.muli"(%arg2, %0) : (i32, i32) -> i32
      %4 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %5 = "arith.select"(%3, %4, %arg2) <{predicate = "slt"}> : (i32, i32, i32) -> i32
      "secret.yield"(%5) : (i32) -> ()
    }) : (!secretsecret, i32) -> i32
    %6 = "arith.cmpi"(%2, %0) <{predicate = "eq"}> : (i32, i32) -> i1
    %7 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %8 = "arith.select"(%6, %7, %arg1) <{predicate = "slt"}> : (i1, i32, i32) -> i32
    "func.return"(%8) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "nested_loops"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 10 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "scf.for"(%0, %1, %2) ({
    ^bb1(%iv: index):
      %4 = "arith.constant"() <{value = 0 : index}> : () -> index
      %5 = "arith.constant"() <{value = 10 : index}> : () -> index
      %6 = "arith.constant"() <{value = 1 : index}> : () -> index
      %7 = "scf.for"(%4, %5, %6) ({
      ^bb2(%jv: index):
        %8 = "arith.addi"(%iv, %jv) <{overflowFlags = #arithoverflownone}> : (index, index) -> index
        "scf.yield"() : () -> ()
      }) : () -> ()
      "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%arg0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()