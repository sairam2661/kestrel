#executable_target_xyz = #hal.executable.target<"llvm-cpu", "xyz", {cpu_features = "", target_triple = "x86_64-xyz-xyz", ukernels = "unpack"}>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1828x8x64x16x16xf32>) -> tensor<1828x128x1024xf32>, sym_name = "unpack_without_transpose"}> ({
  ^bb0(%arg0: tensor<1828x8x64x16x16xf32>):
    %0 = "tensor.empty"() : () -> tensor<1828x128x1024xf32>
    %1 = "linalg.unpack"(%arg0, %0) <{inner_dims_pos = array<i64: 1, 2>, outer_dims_perm = array<i64: 0, 1, 2>, static_inner_tiles = array<i64: 16, 16>}> : (tensor<1828x8x64x16x16xf32>, tensor<1828x128x1024xf32>) -> tensor<1828x128x1024xf32>
    "func.return"(%1) : (tensor<1828x128x1024xf32>) -> ()
  }) {hal.executable.target = #executable_target_xyz} : () -> ()
}) : () -> ()

