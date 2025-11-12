#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {target_triple = "riscv64-unknown-elf"}>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<2048xf32>, vector<64xindex>, vector<64xi1>) -> vector<64xf32>, sym_name = "gather_lowering", sym_visibility = "private"}> ({
  ^bb0(%arg0: memref<2048xf32>, %arg1: vector<64xindex>, %arg2: vector<64xi1>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = dense<0.000000e+00> : vector<64xf32>}> : () -> vector<64xf32>
    %2 = "vector.gather"(%arg0, %0, %arg1, %arg2, %1) : (memref<2048xf32>, index, vector<64xindex>, vector<64xi1>, vector<64xf32>) -> vector<64xf32>
    "func.return"(%2) : (vector<64xf32>) -> ()
  }) : () -> ()
}) {hal.executable.target = #executable_target_embedded_elf_riscv_64} : () -> ()

