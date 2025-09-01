"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "triton__", sym_visibility = "public"}> ({
    "tt.return"() : () -> ()
  }) {noinline = false} : () -> ()
}) {"triton_gpu.compute-capability" = 90 : i32, "triton_gpu.num-ctas" = 1 : i32, "triton_gpu.num-warps" = 4 : i32, "triton_gpu.threads-per-warp" = 32 : i32} : () -> ()

{-#
  external_resources: {
    mlir_reproducer: {
      pipeline: "builtin.module(any(convert-scf-to-cf,convert-index-to-llvm{index-bitwidth=0},convert-triton-gpu-to-llvm{compute-capability=90},convert-nv-gpu-to-llvm,convert-arith-to-llvm{index-bitwidth=0},canonicalize{  max-iterations=10 max-num-rewrites=-1 region-simplify=true test-convergence=false top-down=true},cse,symbol-dce,enable-line-info))",
      disable_threading: false,
      verify_each: false
    }
  }
#-}

