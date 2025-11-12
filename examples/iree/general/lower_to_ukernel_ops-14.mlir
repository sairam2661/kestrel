#executable_target_vmvx_bytecode_fb = #hal.executable.target<"vmvx", "vmvx-bytecode-fb", {ukernels = "all"}>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xf16>, tensor<?x?x7x8xf16>, f16) -> tensor<?x?x7x8xf16>, sym_name = "pack_f16f16"}> ({
  ^bb0(%arg0: tensor<?x?xf16>, %arg1: tensor<?x?x7x8xf16>, %arg2: f16):
    %0 = "linalg.pack"(%arg0, %arg1, %arg2) <{inner_dims_pos = array<i64: 0, 1>, operandSegmentSizes = array<i32: 1, 1, 1, 0>, static_inner_tiles = array<i64: 7, 8>}> : (tensor<?x?xf16>, tensor<?x?x7x8xf16>, f16) -> tensor<?x?x7x8xf16>
    "func.return"(%0) : (tensor<?x?x7x8xf16>) -> ()
  }) {hal.executable.target = #executable_target_vmvx_bytecode_fb} : () -> ()
}) : () -> ()

