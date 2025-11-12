#executable_target_ = #hal.executable.target<"", "", {iree_codegen.target_info = #iree_gpu.target<arch = "", features = "spirv:v1.6,cap:Shader", wgp = <compute =  fp32|int32|int16|int8, storage =  b32|b16|b8, subgroup =  none, dot =  dp4xi8toi32, subgroup_size_choices = [64], max_workgroup_sizes = [1024, 1024, 1024], max_thread_count_per_workgroup = 1024, max_workgroup_memory_bytes = 65536, max_workgroup_counts = [65535, 65535, 65535]>>}>
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi8>, tensor<4x4xi8>) -> tensor<4x4xi32>, sym_name = "matmul_4x4x4_i8_to_i32_dot_prod"}> ({
  ^bb0(%arg0: tensor<4x4xi8>, %arg1: tensor<4x4xi8>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "tensor.empty"() : () -> tensor<4x4xi32>
    %3 = "linalg.fill"(%0, %2) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg5: i32, %arg6: i32):
      "linalg.yield"(%arg5) : (i32) -> ()
    }) : (i32, tensor<4x4xi32>) -> tensor<4x4xi32>
    %4 = "linalg.matmul"(%arg0, %arg1, %3) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg2: i8, %arg3: i8, %arg4: i32):
      %5 = "arith.extsi"(%arg2) : (i8) -> i32
      %6 = "arith.extsi"(%arg3) : (i8) -> i32
      %7 = "arith.muli"(%5, %6) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %8 = "arith.addi"(%arg4, %7) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "linalg.yield"(%8) : (i32) -> ()
    }) : (tensor<4x4xi8>, tensor<4x4xi8>, tensor<4x4xi32>) -> tensor<4x4xi32>
    "func.return"(%4) : (tensor<4x4xi32>) -> ()
  }) {hal.executable.target = #executable_target_} : () -> ()
}) : () -> ()

