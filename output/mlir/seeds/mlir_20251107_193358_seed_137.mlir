"builtin.module"() ({
  "func.func"() <{function_type = (index, i32) -> (i32, i32), sym_name = "nested_loops_and_comparisons"}> ({
  ^bb0(%arg0: index, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.addi"(%arg1, %0) : (i32, i32) -> i32
    "scf.for"(%arg0) <{lower_bound = 0 : index, upper_bound = 5 : index, step = 1 : index}> ({
      ^bb1(%iv: index):
        "scf.if"(%iv) ({
          ^bb2():
            %2 = "arith.cmpi"(%iv, %arg0) <{predicate = 1 : i64}> : (index, index) -> i1
            %3 = "arith.addi"(%arg1, %iv) : (i32, index) -> i32
            "scf.yield"(%3) : (i32) -> ()
        }, {
          ^bb3():
            %4 = "arith.constant"() <{value = 0 : i32}> : () -> i32
            "scf.yield"(%4) : (i32) -> ()
        }) : (i1) -> (i32)
        "scf.yield"() : () -> ()
    }) : (i32) -> ()
    "func.return"(%1, %arg1) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()