#executable_target_xyz = #hal.executable.target<"llvm-cpu", "xyz", {cpu_features = "", target_triple = "x86_64-xyz-xyz", ukernels = "pack"}>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<484x16x64xbf16>, tensor<64x31x8x16x2xbf16>) -> tensor<64x31x8x16x2xbf16>, sym_name = "pack_with_outer_dims_perm"}> ({
  ^bb0(%arg0: tensor<484x16x64xbf16>, %arg1: tensor<64x31x8x16x2xbf16>):
    %0 = "arith.constant"() <{value = 0.000000e+00 : bf16}> : () -> bf16
    %1 = "linalg.pack"(%arg0, %arg1, %0) <{inner_dims_pos = array<i64: 0, 1>, operandSegmentSizes = array<i32: 1, 1, 1, 0>, outer_dims_perm = array<i64: 2, 0, 1>, static_inner_tiles = array<i64: 16, 2>}> : (tensor<484x16x64xbf16>, tensor<64x31x8x16x2xbf16>, bf16) -> tensor<64x31x8x16x2xbf16>
    "func.return"(%1) : (tensor<64x31x8x16x2xbf16>) -> ()
  }) {hal.executable.target = #executable_target_xyz} : () -> ()
}) : () -> ()

