"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "nested_interplay"}> ({
    ^bb0(%arg0: i32, %arg1: i64):
      %0 = "arith.addi"(%arg0, %arg1) : (i32, i64) -> i64
      %1 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %2 = "arith.addi"(%1, %arg0) : (i32, i32) -> i32
      "scf.for"() <{lb = 0 : index, ub = 10 : index, step = 1 : index}> ({
        ^bb1(%iv: index):
          %3 = "arith.cmpi"(%iv, 5) <{predicate = "eq"}> : (index, index) -> i1
          "scf.if"(%3) ({
            ^bb2:
              %4 = "arith.addi"(%2, 1) : (i32, i32) -> i32
              "scf.yield"() : () -> ()
          }, {
            ^bb3:
              "scf.yield"() : () -> ()
          }) : (i1) -> ()
          "scf.yield"() : () -> ()
      }) : () -> ()
      "func.return"(%0, %2) : (i64, i32) -> ()
  }) : () -> ()
}) : () -> ()