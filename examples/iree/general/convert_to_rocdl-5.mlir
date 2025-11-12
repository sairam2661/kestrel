#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "emulation_lowering"}> ({
    %0 = "arith.constant"() <{value = dense<4> : vector<2x4xi8>}> : () -> vector<2x4xi8>
    %1 = "arith.constant"() <{value = dense<15> : vector<2x4xi8>}> : () -> vector<2x4xi8>
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = dense<0> : vector<2x8xi4>}> : () -> vector<2x8xi4>
    %4 = "arith.constant"() <{value = dense<0.000000e+00> : vector<8x1x2xf16>}> : () -> vector<8x1x2xf16>
    %5 = "arith.constant"() <{value = 32 : index}> : () -> index
    %6 = "arith.constant"() <{value = 2 : index}> : () -> index
    %7 = "arith.constant"() <{value = 8 : index}> : () -> index
    %8 = "arith.constant"() <{value = 4 : index}> : () -> index
    %9 = "arith.constant"() <{value = 0 : index}> : () -> index
    %10 = "gpu.thread_id"() <{dimension = #gpu<dim x>, upper_bound = 64 : index}> : () -> index
    %11 = "hal.interface.binding.subspan"(%9) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<131072x192xf16, #gpu.address_space<global>>
    %12 = "hal.interface.binding.subspan"(%9) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<131072x192xf16, #gpu.address_space<global>>
    %13 = "hal.interface.binding.subspan"(%9) <{alignment = 64 : index, binding = 2 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<402653184xi8, #gpu.address_space<global>>
    %14 = "hal.interface.binding.subspan"(%9) <{alignment = 64 : index, binding = 4 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<131072x192x32xf16, #gpu.address_space<global>>
    %15 = "arith.divui"(%10, %8) : (index, index) -> index
    %16 = "arith.remui"(%10, %8) : (index, index) -> index
    %17 = "arith.muli"(%16, %7) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %18 = "hal.interface.workgroup.id"() <{dimension = 0 : index, upper_bound = 6 : index}> : () -> index
    %19 = "hal.interface.workgroup.id"() <{dimension = 1 : index, upper_bound = 131072 : index}> : () -> index
    %20 = "arith.muli"(%15, %6) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %21 = "arith.muli"(%18, %5) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %22 = "arith.addi"(%20, %21) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %23 = "vector.load"(%11, %19, %22) : (memref<131072x192xf16, #gpu.address_space<global>>, index, index) -> vector<2xf16>
    %24 = "vector.broadcast"(%23) : (vector<2xf16>) -> vector<1x2xf16>
    %25 = "vector.insert"(%24, %4) <{static_position = array<i64: 0>}> : (vector<1x2xf16>, vector<8x1x2xf16>) -> vector<8x1x2xf16>
    %26 = "vector.insert"(%24, %25) <{static_position = array<i64: 1>}> : (vector<1x2xf16>, vector<8x1x2xf16>) -> vector<8x1x2xf16>
    %27 = "vector.insert"(%24, %26) <{static_position = array<i64: 2>}> : (vector<1x2xf16>, vector<8x1x2xf16>) -> vector<8x1x2xf16>
    %28 = "vector.insert"(%24, %27) <{static_position = array<i64: 3>}> : (vector<1x2xf16>, vector<8x1x2xf16>) -> vector<8x1x2xf16>
    %29 = "vector.insert"(%24, %28) <{static_position = array<i64: 4>}> : (vector<1x2xf16>, vector<8x1x2xf16>) -> vector<8x1x2xf16>
    %30 = "vector.insert"(%24, %29) <{static_position = array<i64: 5>}> : (vector<1x2xf16>, vector<8x1x2xf16>) -> vector<8x1x2xf16>
    %31 = "vector.insert"(%24, %30) <{static_position = array<i64: 6>}> : (vector<1x2xf16>, vector<8x1x2xf16>) -> vector<8x1x2xf16>
    %32 = "vector.insert"(%24, %31) <{static_position = array<i64: 7>}> : (vector<1x2xf16>, vector<8x1x2xf16>) -> vector<8x1x2xf16>
    %33 = "vector.transpose"(%32) <{permutation = array<i64: 1, 2, 0>}> : (vector<8x1x2xf16>) -> vector<1x2x8xf16>
    %34 = "vector.load"(%12, %19, %22) : (memref<131072x192xf16, #gpu.address_space<global>>, index, index) -> vector<2xf16>
    %35 = "vector.broadcast"(%34) : (vector<2xf16>) -> vector<1x2xf16>
    %36 = "vector.insert"(%35, %4) <{static_position = array<i64: 0>}> : (vector<1x2xf16>, vector<8x1x2xf16>) -> vector<8x1x2xf16>
    %37 = "vector.insert"(%35, %36) <{static_position = array<i64: 1>}> : (vector<1x2xf16>, vector<8x1x2xf16>) -> vector<8x1x2xf16>
    %38 = "vector.insert"(%35, %37) <{static_position = array<i64: 2>}> : (vector<1x2xf16>, vector<8x1x2xf16>) -> vector<8x1x2xf16>
    %39 = "vector.insert"(%35, %38) <{static_position = array<i64: 3>}> : (vector<1x2xf16>, vector<8x1x2xf16>) -> vector<8x1x2xf16>
    %40 = "vector.insert"(%35, %39) <{static_position = array<i64: 4>}> : (vector<1x2xf16>, vector<8x1x2xf16>) -> vector<8x1x2xf16>
    %41 = "vector.insert"(%35, %40) <{static_position = array<i64: 5>}> : (vector<1x2xf16>, vector<8x1x2xf16>) -> vector<8x1x2xf16>
    %42 = "vector.insert"(%35, %41) <{static_position = array<i64: 6>}> : (vector<1x2xf16>, vector<8x1x2xf16>) -> vector<8x1x2xf16>
    %43 = "vector.insert"(%35, %42) <{static_position = array<i64: 7>}> : (vector<1x2xf16>, vector<8x1x2xf16>) -> vector<8x1x2xf16>
    %44 = "vector.transpose"(%43) <{permutation = array<i64: 1, 2, 0>}> : (vector<8x1x2xf16>) -> vector<1x2x8xf16>
    %45 = "arith.constant"() <{value = 3072 : index}> : () -> index
    %46 = "arith.muli"(%19, %45) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %47 = "arith.constant"() <{value = 16 : index}> : () -> index
    %48 = "arith.muli"(%22, %47) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %49 = "arith.addi"(%46, %48) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %50 = "arith.constant"() <{value = 2 : index}> : () -> index
    %51 = "arith.constant"() <{value = 0 : index}> : () -> index
    %52 = "arith.constant"() <{value = -1 : index}> : () -> index
    %53 = "arith.cmpi"(%17, %51) <{predicate = 2 : i64}> : (index, index) -> i1
    %54 = "arith.subi"(%52, %17) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %55 = "arith.select"(%53, %54, %17) : (i1, index, index) -> index
    %56 = "arith.divsi"(%55, %50) : (index, index) -> index
    %57 = "arith.subi"(%52, %56) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %58 = "arith.select"(%53, %57, %56) : (i1, index, index) -> index
    %59 = "arith.addi"(%49, %58) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %60 = "vector.load"(%13, %59) : (memref<402653184xi8, #gpu.address_space<global>>, index) -> vector<4xi8>
    %61 = "vector.bitcast"(%60) : (vector<4xi8>) -> vector<8xi4>
    %62 = "vector.insert"(%61, %3) <{static_position = array<i64: 0>}> : (vector<8xi4>, vector<2x8xi4>) -> vector<2x8xi4>
    %63 = "arith.addi"(%22, %2) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %64 = "arith.constant"() <{value = 3072 : index}> : () -> index
    %65 = "arith.muli"(%19, %64) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %66 = "arith.constant"() <{value = 16 : index}> : () -> index
    %67 = "arith.muli"(%63, %66) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %68 = "arith.addi"(%65, %67) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %69 = "arith.constant"() <{value = 2 : index}> : () -> index
    %70 = "arith.constant"() <{value = 0 : index}> : () -> index
    %71 = "arith.constant"() <{value = -1 : index}> : () -> index
    %72 = "arith.cmpi"(%17, %70) <{predicate = 2 : i64}> : (index, index) -> i1
    %73 = "arith.subi"(%71, %17) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %74 = "arith.select"(%72, %73, %17) : (i1, index, index) -> index
    %75 = "arith.divsi"(%74, %69) : (index, index) -> index
    %76 = "arith.subi"(%71, %75) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %77 = "arith.select"(%72, %76, %75) : (i1, index, index) -> index
    %78 = "arith.addi"(%68, %77) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %79 = "vector.load"(%13, %78) : (memref<402653184xi8, #gpu.address_space<global>>, index) -> vector<4xi8>
    %80 = "vector.bitcast"(%79) : (vector<4xi8>) -> vector<8xi4>
    %81 = "vector.insert"(%80, %62) <{static_position = array<i64: 1>}> : (vector<8xi4>, vector<2x8xi4>) -> vector<2x8xi4>
    %82 = "vector.bitcast"(%81) : (vector<2x8xi4>) -> vector<2x4xi8>
    %83 = "arith.andi"(%82, %1) : (vector<2x4xi8>, vector<2x4xi8>) -> vector<2x4xi8>
    %84 = "arith.shrui"(%82, %0) : (vector<2x4xi8>, vector<2x4xi8>) -> vector<2x4xi8>
    %85 = "vector.interleave"(%83, %84) : (vector<2x4xi8>, vector<2x4xi8>) -> vector<2x8xi8>
    %86 = "arith.extui"(%85) : (vector<2x8xi8>) -> vector<2x8xi32>
    %87 = "arith.uitofp"(%86) : (vector<2x8xi32>) -> vector<2x8xf16>
    %88 = "vector.extract"(%33) <{static_position = array<i64: 0>}> : (vector<1x2x8xf16>) -> vector<2x8xf16>
    %89 = "arith.mulf"(%87, %88) <{fastmath = #arith.fastmath<none>}> : (vector<2x8xf16>, vector<2x8xf16>) -> vector<2x8xf16>
    %90 = "vector.extract"(%44) <{static_position = array<i64: 0>}> : (vector<1x2x8xf16>) -> vector<2x8xf16>
    %91 = "arith.addf"(%89, %90) <{fastmath = #arith.fastmath<none>}> : (vector<2x8xf16>, vector<2x8xf16>) -> vector<2x8xf16>
    %92 = "vector.extract"(%91) <{static_position = array<i64: 0>}> : (vector<2x8xf16>) -> vector<8xf16>
    "vector.store"(%92, %14, %19, %22, %17) : (vector<8xf16>, memref<131072x192x32xf16, #gpu.address_space<global>>, index, index, index) -> ()
    %93 = "vector.extract"(%91) <{static_position = array<i64: 1>}> : (vector<2x8xf16>) -> vector<8xf16>
    "vector.store"(%93, %14, %19, %63, %17) : (vector<8xf16>, memref<131072x192x32xf16, #gpu.address_space<global>>, index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

