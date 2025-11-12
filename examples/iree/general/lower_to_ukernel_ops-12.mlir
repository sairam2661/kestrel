#executable_target_xyz = #hal.executable.target<"llvm-cpu", "xyz", {cpu_features = "+avx512f", target_triple = "x86_64-xyz-xyz", ukernels = "all"}>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xi8>, tensor<?x?x7x8xi8>, i8) -> tensor<?x?x7x8xi8>, sym_name = "pack_i8i8_x86"}> ({
  ^bb0(%arg0: tensor<?x?xi8>, %arg1: tensor<?x?x7x8xi8>, %arg2: i8):
    %0 = "linalg.pack"(%arg0, %arg1, %arg2) <{inner_dims_pos = array<i64: 0, 1>, operandSegmentSizes = array<i32: 1, 1, 1, 0>, static_inner_tiles = array<i64: 7, 8>}> : (tensor<?x?xi8>, tensor<?x?x7x8xi8>, i8) -> tensor<?x?x7x8xi8>
    "func.return"(%0) : (tensor<?x?x7x8xi8>) -> ()
  }) {hal.executable.target = #executable_target_xyz} : () -> ()
}) : () -> ()

