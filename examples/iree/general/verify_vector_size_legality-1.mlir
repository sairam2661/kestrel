#executable_target_xyz = #hal.executable.target<"llvm-cpu", "xyz", {native_vector_size = 64 : i64}>
"builtin.module"() ({
  "func.func"() <{function_type = (vector<16x64x64xf32>) -> vector<16x64x64xf32>, sym_name = "large_vector_with_native_vector_size"}> ({
  ^bb0(%arg0: vector<16x64x64xf32>):
    %0 = "math.exp"(%arg0) <{fastmath = #arith.fastmath<none>}> : (vector<16x64x64xf32>) -> vector<16x64x64xf32>
    "func.return"(%0) : (vector<16x64x64xf32>) -> ()
  }) {hal.executable.target = #executable_target_xyz} : () -> ()
}) : () -> ()

