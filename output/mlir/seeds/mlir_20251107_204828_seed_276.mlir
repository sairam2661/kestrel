"builtin.module"() ({
  "func.func"() <{function_type = (i32, vector<4xi32>, memref<4xi32>) -> i32, sym_name = "complex_nested_control_flow"}> ({
  ^bb0(%arg0: i32, %arg1: vector<4xi32>, %arg2: memref<4xi32>):
    %c0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c3 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %0 = "scf.for"(%c0, %c3, %c1) ({
      ^bb1(%iv: i32):
        %1 = "memref.load"(%arg2, %iv) : (memref<4xi32>, i32) -> i32
        %2 = "arith.addi"(%1, %iv) : (i32, i32) -> i32
        "memref.store"(%2, %arg2, %iv) : (i32, memref<4xi32>, i32) -> ()
        "scf.yield"() : () -> ()
    }) : (i32) -> ()
    %3 = "scf.if"(%arg0) ({
      ^bb2:
        %4 = "arith.addi"(%arg1#0, %arg1#1) : (i32, i32) -> i32
        %5 = "arith.addi"(%4, %arg1#2) : (i32, i32) -> i32
        %6 = "arith.addi"(%5, %arg1#3) : (i32, i32) -> i32
        "scf.yield"(%6) : (i32) -> ()
    }, {
      ^bb3:
        %7 = "arith.subi"(%arg1#0, %arg1#1) : (i32, i32) -> i32
        %8 = "arith.subi"(%7, %arg1#2) : (i32, i32) -> i32
        %9 = "arith.subi"(%8, %arg1#3) : (i32, i32) -> i32
        "scf.yield"(%9) : (i32) -> ()
    }) : (i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()