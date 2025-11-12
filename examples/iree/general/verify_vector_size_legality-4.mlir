#executable_target_xyz = #hal.executable.target<"llvm-cpu", "xyz", {native_vector_size = 16 : i64}>
"builtin.module"() ({
  "func.func"() <{function_type = (vector<[16]x64x64xf32>) -> vector<[16]x64x64xf32>, sym_name = "large_scalable_vector_with_native_vector_size"}> ({
  ^bb0(%arg0: vector<[16]x64x64xf32>):
    %0 = "math.exp"(%arg0) <{fastmath = #arith.fastmath<none>}> : (vector<[16]x64x64xf32>) -> vector<[16]x64x64xf32>
    "func.return"(%0) : (vector<[16]x64x64xf32>) -> ()
  }) {hal.executable.target = #executable_target_xyz} : () -> ()
}) : () -> ()

