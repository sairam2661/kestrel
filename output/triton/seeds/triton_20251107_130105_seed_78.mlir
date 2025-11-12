"builtin.module"() ({
  "tt.func"() <{function_type = (!ttgpu_ptr) -> !ttgpu_ptr, sym_name = "pointer_arithmetic"}> ({
  ^bb0(%arg0: !ttgpu_ptr):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c4_i32 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %c8_i32 = "arith.constant"() <{value = 8 : i32}> : () -> i32
    %c16_i32 = "arith.constant"() <{value = 16 : i32}> : () -> i32
    %c32_i32 = "arith.constant"() <{value = 32 : i32}> : () -> i32
    %c64_i32 = "arith.constant"() <{value = 64 : i32}> : () -> i32
    %c128_i32 = "arith.constant"() <{value = 128 : i32}> : () -> i32
    %c256_i32 = "arith.constant"() <{value = 256 : i32}> : () -> i32

    %ptr1 = "tt.addptr"(%arg0, %c64_i32) : (!ttgpu_ptr, i32) -> !ttgpu_ptr
    %ptr2 = "tt.addptr"(%ptr1, %c32_i32) : (!ttgpu_ptr, i32) -> !ttgpu_ptr
    %ptr3 = "tt.addptr"(%ptr2, %c16_i32) : (!ttgpu_ptr, i32) -> !ttgpu_ptr
    %ptr4 = "tt.addptr"(%ptr3, %c8_i32) : (!ttgpu_ptr, i32) -> !ttgpu_ptr
    %ptr5 = "tt.addptr"(%ptr4, %c4_i32) : (!ttgpu_ptr, i32) -> !ttgpu_ptr
    %ptr6 = "tt.addptr"(%ptr5, %c2_i32) : (!ttgpu_ptr, i32) -> !ttgpu_ptr
    %ptr7 = "tt.addptr"(%ptr6, %c1_i32) : (!ttgpu_ptr, i32) -> !ttgpu_ptr
    %ptr8 = "tt.addptr"(%ptr7, %c0_i32) : (!ttgpu_ptr, i32) -> !ttgpu_ptr

    "tt.return"(%ptr8) : (!ttgpu_ptr) -> ()
  }) : () -> ()
}) : () -> ()