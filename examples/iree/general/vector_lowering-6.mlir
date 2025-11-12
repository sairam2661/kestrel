#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu_features = "+v", target_triple = "riscv64-unknown-elf"}>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<32000x2048xf32>, vector<2x64xindex>, vector<2x64xi1>) -> vector<2x64xf32>, sym_name = "negative_no_gather_lowering", sym_visibility = "private"}> ({
  ^bb0(%arg0: memref<32000x2048xf32>, %arg1: vector<2x64xindex>, %arg2: vector<2x64xi1>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = dense<0.000000e+00> : vector<2x64xf32>}> : () -> vector<2x64xf32>
    %2 = "vector.gather"(%arg0, %0, %0, %arg1, %arg2, %1) : (memref<32000x2048xf32>, index, index, vector<2x64xindex>, vector<2x64xi1>, vector<2x64xf32>) -> vector<2x64xf32>
    "func.return"(%2) : (vector<2x64xf32>) -> ()
  }) : () -> ()
}) {hal.executable.target = #executable_target_embedded_elf_riscv_64} : () -> ()

