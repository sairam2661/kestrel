"builtin.module"() ({
  "tt.func"() <{function_type = (!ttgPtr_0, i32) -> (!ttgPtr_0, i32), sym_name = "fuzz_cross_dialect"}> ({
  ^bb0(%arg0: !ttgPtr_0, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "scf.if"(%arg1) ({
    ^if0:
      %2 = "arith.cmpi"(%arg1, %0, "eq") : (i32, i32) -> i1
      scf.yield %2 : i1
    }) : (i1)
    ^bb1(%in_cond: i1):
      "arith.select"(%in_cond, %arg0, %0) : (i1, !ttgPtr_0, i32) -> !ttgPtr_0
      %3 = "scf.for"(%arg1, %0) <{lower_bound = 0 : i32, upper_bound = 10 : i32, step = 1 : i32}> ({
      ^for0(%iv: i32):
        %4 = "arith.addi"(%iv, %0) : (i32, i32) -> i32
        scf.yield : ()
      }) : () -> ()
      scf.yield %arg0, %arg1 : !ttgPtr_0, i32
  }) : () -> ()
}) : () -> ()