"builtin.module"() ({
  "func.func"() <{function_type = (memref<10xi32>, memref<10xi32>) -> (), sym_name = "nested_loops_and_ifs"}> ({
  ^bb0(%arg0: memref<10xi32>, %arg1: memref<10xi32>):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c10_i32 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32

    "scf.for"(%c0_i32, %c10_i32, %c1_i32) ({
    ^bb1(%iv: i32):
      %cond = "arith.cmpi"(%iv, %c10_i32) <{predicate = "slt"}> : (i32, i32) -> i1
      "scf.if"(%cond) ({
      ^bb2:
        %0 = "arith.addi"(%iv, %c1_i32) : (i32, i32) -> i32
        "memref.store"(%0, %arg0, %iv) : (i32, memref<10xi32>, i32) -> ()
        "scf.yield"() : () -> ()
      }) {
      } : (i1) -> ()
      %1 = "arith.addi"(%iv, %c1_i32) : (i32, i32) -> i32
      "memref.store"(%1, %arg1, %iv) : (i32, memref<10xi32>, i32) -> ()
      "scf.yield"() : () -> ()
    }) : (i32) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()