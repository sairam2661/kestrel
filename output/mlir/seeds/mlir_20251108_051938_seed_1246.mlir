"builtin.module"() ({
  "func.func"() <{function_type = (i32, memref<4x5xf32>, tensor<2x3xi64>) -> (i32, memref<4x5xf32>), sym_name = "mixed_types_and_control_flow"}> ({
  ^bb0(%arg0: i32, %arg1: memref<4x5xf32>, %arg2: tensor<2x3xi64>):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2:2 = "scf.if"(%1) ({
      %3 = "arith.cmpi"("slt", %1, %0) : (i32, i32) -> i1
      "scf.yield"(%3) : (i1) -> ()
    }, {
      %4 = "arith.cmpi"("sgt", %1, %0) : (i32, i32) -> i1
      "scf.yield"(%4) : (i1) -> ()
    }) : (i32) -> (i1)
    %5 = "scf.for"(%1, %0, %0) <{step = 1 : i32}> ({
      ^bb1(%iv: i32):
        %6 = "memref.load"(%arg1, %iv) : (memref<4x5xf32>, i32) -> f32
        %7 = "arith.addf"(%6, %6) : (f32, f32) -> f32
        "memref.store"(%7, %arg1, %iv) : (f32, memref<4x5xf32>, i32) -> ()
        "scf.yield"() : () -> ()
    }) : (i32) -> ()
    %8 = "func.call"() <{callee = "@test_func"}> : () -> ()
    "func.return"(%1, %arg1) : (i32, memref<4x5xf32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "test_func"}> ({
  ^bb0:
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()