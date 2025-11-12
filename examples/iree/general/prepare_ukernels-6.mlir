#executable_target_xyz = #hal.executable.target<"llvm-cpu", "xyz", {cpu_features = "", target_triple = "x86_64-xyz-xyz", ukernels = "pack"}>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x16384x512xbf16>, tensor<1x1024x256x16x2xbf16>) -> tensor<1x1024x256x16x2xbf16>, sym_name = "pack_without_outer_dims_perm"}> ({
  ^bb0(%arg0: tensor<1x16384x512xbf16>, %arg1: tensor<1x1024x256x16x2xbf16>):
    %0 = "arith.constant"() <{value = 0.000000e+00 : bf16}> : () -> bf16
    %1 = "linalg.pack"(%arg0, %arg1) <{inner_dims_pos = array<i64: 1, 2>, operandSegmentSizes = array<i32: 1, 1, 0, 0>, static_inner_tiles = array<i64: 16, 2>}> : (tensor<1x16384x512xbf16>, tensor<1x1024x256x16x2xbf16>) -> tensor<1x1024x256x16x2xbf16>
    "func.return"(%1) : (tensor<1x1024x256x16x2xbf16>) -> ()
  }) {hal.executable.target = #executable_target_xyz} : () -> ()
}) : () -> ()

