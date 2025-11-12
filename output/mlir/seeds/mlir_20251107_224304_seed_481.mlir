"builtin.module"() ({
  "func.func"() <{function_type = (i32, memref<4xi8>) -> (i32, memref<4xi8>), sym_name = "fuzz_test"}> ({
  ^bb0(%arg0: i32, %arg1: memref<4xi8>):
    %0 = "scf.for"(%arg0) <{lower_bound = 0 : i32, upper_bound = 10 : i32, step = 1 : i32}> ({
    ^bb1(%iv: i32):
      %1 = "scf.if"(%iv) <{result = 1 : i1}> ({
      ^bb2:
        %2 = "arith.addi"(%iv, %arg0) : (i32, i32) -> i32
        "scf.yield"(%2) : (i32) -> ()
      }) {
      } : (i32) -> (i32)
      "scf.yield"() : () -> ()
    }) : (i32) -> ()
    %3 = "arith.addi"(%0, %arg0) : (i32, i32) -> i32
    "func.return"(%3, %arg1) : (i32, memref<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()