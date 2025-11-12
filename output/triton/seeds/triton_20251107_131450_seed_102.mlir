"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32), sym_name = "complex_arithmetic"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %2 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %3 = "arith.muli"(%2, %0) : (i32, i32) -> i32
      %4 = "arith.remsi"(%3, %1) : (i32, i32) -> i32
      %5 = "arith.xori"(%4, %2) : (i32, i32) -> i32
      %6 = "arith.cmpi"(%5, %0) <{predicate = 2 : i64}> : (i32, i32) -> i1
      %7 = "arith.select"(%6, %5, %arg0) : (i1, i32, i32) -> i32
      "tt.return"(%7) : (i32) -> ()
  }) : (i32, i32) -> (i32)
  "tt.func"() <{function_type = (i32) -> (i32), sym_name = "nested_if"}> ({
    ^bb0(%arg0: i32):
      %0 = "arith.constant"() <{value = 20 : i32}> : () -> i32
      %1 = "arith.cmpi"(%arg0, %0) <{predicate = 6 : i64}> : (i32, i32) -> i1
      "scf.if"(%1) ({
        ^bb1(%arg1: i1):
          %2 = "arith.constant"() <{value = 30 : i32}> : () -> i32
          %3 = "arith.addi"(%arg0, %2) : (i32, i32) -> i32
          "tt.return"(%3) : (i32) -> ()
      }, {
        ^bb2(%arg2: i1):
          %4 = "arith.constant"() <{value = 40 : i32}> : () -> i32
          %5 = "arith.subi"(%arg0, %4) : (i32, i32) -> i32
          "tt.return"(%5) : (i32) -> ()
      }) : (i1) -> ()
  }) : (i32) -> (i32)
}) : () -> ()