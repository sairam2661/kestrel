"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, f32, tensor<2x3xi8>) -> (f32, tensor<2x3xi8>), sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: tensor<2x3xi8>):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %2 = "arith.cmpi"("slt", %0, %1) : (i32, i32) -> i1
    %3 = "arith.cmpf"("olt", %arg2, 0.0001) : (f32, f32) -> i1
    %4 = "arith.andi"(%2, %3) : (i1, i1) -> i1
    %5 = "scf.if"(%4) <{sym_name = "cond_if"}> ({
      ^bb1:
        %6 = "arith.addf"(%arg2, 1.0) : (f32, f32) -> f32
        "scf.yield"(%6, %arg3) : (f32, tensor<2x3xi8>) -> ()
    }) {
      "scf.yield" = "scf.yield" : () -> (f32, tensor<2x3xi8>)
    } : (i1) -> (f32, tensor<2x3xi8>)
    "func.return"(%5#0, %5#1) : (f32, tensor<2x3xi8>) -> ()
  }) : () -> ()
}) : () -> ()