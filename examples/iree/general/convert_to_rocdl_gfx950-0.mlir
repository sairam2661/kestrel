#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "test_permlane_16_32_lowering"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<1xi32>
    %2 = "gpu.thread_id"() <{dimension = #gpu<dim x>}> : () -> index
    %3 = "arith.index_castui"(%2) : (index) -> i32
    %4 = "amdgpu.permlane_swap"(%3) <{bound_ctrl = false, fetch_inactive = false, row_length = 32 : i32}> : (i32) -> i32
    %5 = "arith.addi"(%3, %4) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %6 = "amdgpu.permlane_swap"(%5) <{bound_ctrl = false, fetch_inactive = false, row_length = 16 : i32}> : (i32) -> i32
    %7 = "arith.addi"(%5, %6) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %8 = "arith.cmpi"(%2, %0) <{predicate = 0 : i64}> : (index, index) -> i1
    "scf.if"(%8) ({
      "memref.store"(%7, %1, %0) : (i32, memref<1xi32>, index) -> ()
      "scf.yield"() : () -> ()
    }, {
    }) : (i1) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

